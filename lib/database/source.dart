import 'package:flutter_novel/database/novelsql.dart';
import 'package:flutter_novel/model/book_source.dart';
import 'package:sqflite/sqflite.dart';

class SourceListHelper {
  SourceListHelper._internal();
  factory SourceListHelper() => _instance;
  static late final SourceListHelper _instance = SourceListHelper._internal();
  bool isTableExits = false;

  final soureListTable = 'book_source';
  final String createSourceListTable = '''
  CREATE TABLE "book_source" (
	"_id"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"bookSourceName"	TEXT NOT NULL,
	"bookSourceGroup"	TEXT,
	"bookSourceUrl"	TEXT,
	"bookUrlPattern"	TEXT,
	"bookSourceType" INTEGER NOT NULL DEFAULT 0,
	"customOrder"	INTEGER DEFAULT 0,
	"enabled"	BOOLEAN NOT NULL DEFAULT 0,
	"enabledExplore"	INTEGER NOT NULL DEFAULT 0,
	"header"	TEXT,
	"loginUrl"	TEXT,
	"bookSourceComment"	TEXT,
	"lastUpdateTime"	REAL,
	"weight"	INTEGER NOT NULL DEFAULT 0,
	"exploreUrl"	TEXT,
	"ruleExplore"	TEXT,
	"searchUrl"	TEXT,
	"ruleSearch"	TEXT,
	"ruleBookInfo"	TEXT,
	"ruleToc"	TEXT,
	"ruleContent"	TEXT,
  "respondTime" INTEGER NOT NULL DEFAULT 0
);
  ''';

  Future<Database> getDataBase() async {
    isTableExits = await NovelSql().isTableExits(soureListTable);
    print(isTableExits);
    final db = await NovelSql().getDataBase();
    if (isTableExits) {
      return db;
    }
    await db.execute(createSourceListTable);
    return db;
  }

  Future<void> insert(BookSource bookSource) async {
    final db = await getDataBase();
    int id = await db.insert(soureListTable, bookSource.toJson(), conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<BookSource>> soureceList() async {
    final db = await getDataBase();

    final List<Map<String, dynamic>> maps = await db.query(soureListTable);
    return List.generate(maps.length, (index) => BookSource.fromJson(maps[index]));
  }

  Future<BookSource> query(String id) async {
    final db = await getDataBase();
    final List<Map<String, dynamic>> bookSource = await db.query(soureListTable, where: 'id = ?', whereArgs: [id]);

    return BookSource.fromJson(bookSource[0]);
  }

  Future<void> update(BookSource bookSource) async {
    final db = await getDataBase();

    await db
        .update(soureListTable, bookSource.toJson(), where: 'bookSourceUrl = ?', whereArgs: [bookSource.bookSourceUrl]);
  }
}
