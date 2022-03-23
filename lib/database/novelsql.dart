import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class NovelSql {
  NovelSql._internal();
  factory NovelSql() => _instance;
  static late final NovelSql _instance = NovelSql._internal();

  Database? database;

  Future<Database> init() async {
    return openDatabase(
      join(await getDatabasesPath(), 'novel.db'),
      onCreate: _onCreate,
      version: 1,
    );
  }

  void _onCreate(Database db, int newVersion) async {}

  ///判断表是否存在
  isTableExits(String tableName) async {
    database = await getDataBase();
    var sql = "SELECT * FROM sqlite_master WHERE TYPE = 'table' AND NAME = '$tableName'";
    var res = await database?.rawQuery(sql);
    return res?.isNotEmpty;
  }

  Future<Database> getDataBase() async {
    if (database != null) return Future.value(database);
    return init();
  }
}
