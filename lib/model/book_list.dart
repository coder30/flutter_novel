import 'package:json_annotation/json_annotation.dart';

part 'book_list.g.dart';

@JsonSerializable()
class BookList extends Object {
  @JsonKey(name: 'ranking')
  Ranking ranking;

  @JsonKey(name: 'ok')
  bool ok;

  BookList(
    this.ranking,
    this.ok,
  );

  factory BookList.fromJson(Map<String, dynamic> srcJson) =>
      _$BookListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BookListToJson(this);
}

@JsonSerializable()
class Ranking extends Object {
  @JsonKey(name: 'updated')
  String updated;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'tag')
  String tag;

  @JsonKey(name: 'cover')
  String cover;

  @JsonKey(name: 'icon')
  String icon;

  @JsonKey(name: '__v')
  int v;

  @JsonKey(name: 'monthRank')
  String monthRank;

  @JsonKey(name: 'totalRank')
  String totalRank;

  @JsonKey(name: 'shortTitle')
  String shortTitle;

  @JsonKey(name: 'created')
  String created;

  @JsonKey(name: 'biTag')
  String biTag;

  @JsonKey(name: 'isSub')
  bool isSub;

  @JsonKey(name: 'collapse')
  bool collapse;

  @JsonKey(name: 'gender')
  String gender;

  @JsonKey(name: 'priority')
  int priority;

  @JsonKey(name: 'books')
  List<Books> books;

  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'total')
  int total;

  Ranking(
    this.id,
    this.updated,
    this.title,
    this.tag,
    this.cover,
    this.icon,
    this.v,
    this.monthRank,
    this.totalRank,
    this.shortTitle,
    this.created,
    this.biTag,
    this.isSub,
    this.collapse,
    this.gender,
    this.priority,
    this.books,
    this.total,
  );

  factory Ranking.fromJson(Map<String, dynamic> srcJson) =>
      _$RankingFromJson(srcJson);

  Map<String, dynamic> toJson() => _$RankingToJson(this);
}

@JsonSerializable()
class Books extends Object {
  @JsonKey(name: '_id')
  String id;

  @JsonKey(name: 'site')
  String site;

  @JsonKey(name: 'author')
  String author;

  @JsonKey(name: 'majorCate')
  String majorCate;

  @JsonKey(name: 'minorCate')
  String minorCate;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'cover')
  String cover;

  @JsonKey(name: 'shortIntro')
  String shortIntro;

  @JsonKey(name: 'allowMonthly')
  bool allowMonthly;

  @JsonKey(name: 'banned')
  int banned;

  @JsonKey(name: 'latelyFollower')
  int latelyFollower;

  @JsonKey(name: 'retentionRatio')
  String retentionRatio;

  Books(
    this.id,
    this.site,
    this.author,
    this.majorCate,
    this.minorCate,
    this.title,
    this.cover,
    this.shortIntro,
    this.allowMonthly,
    this.banned,
    this.latelyFollower,
    this.retentionRatio,
  );

  factory Books.fromJson(Map<String, dynamic> srcJson) =>
      _$BooksFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BooksToJson(this);
}
