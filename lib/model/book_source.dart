import 'package:json_annotation/json_annotation.dart';

part 'book_source.g.dart';

List<BookSource> getBookSourceList(List<dynamic> list) {
  List<BookSource> result = [];
  for (var item in list) {
    result.add(BookSource.fromJson(item));
  }
  return result;
}

@JsonSerializable(explicitToJson: true)
class BookSource {
  @JsonKey(name: 'bookSourceComment')
  String? bookSourceComment;

  @JsonKey(name: 'bookSourceGroup')
  String? bookSourceGroup;

  @JsonKey(name: 'bookSourceName')
  String? bookSourceName;

  @JsonKey(name: 'bookSourceType')
  int? bookSourceType;

  @JsonKey(name: 'bookSourceUrl')
  String? bookSourceUrl;

  @JsonKey(name: 'customOrder')
  int? customOrder;

  @JsonKey(name: 'enabled')
  bool? enabled;

  @JsonKey(name: 'enabledExplore')
  bool? enabledExplore;

  @JsonKey(name: 'exploreUrl')
  String? exploreUrl;

  @JsonKey(name: 'lastUpdateTime')
  int? lastUpdateTime;

  @JsonKey(name: 'respondTime')
  int? respondTime;

  @JsonKey(name: 'ruleBookInfo')
  RuleBookInfo? ruleBookInfo;

  @JsonKey(name: 'ruleContent')
  RuleContent? ruleContent;

  @JsonKey(name: 'ruleExplore')
  RuleExplore? ruleExplore;

  @JsonKey(name: 'ruleSearch')
  RuleSearch? ruleSearch;

  @JsonKey(name: 'ruleToc')
  RuleToc? ruleToc;

  @JsonKey(name: 'searchUrl')
  String? searchUrl;

  @JsonKey(name: 'weight')
  int? weight;

  BookSource();

  static BookSource fromJson(Map<String, dynamic> srcJson) => _$BookSourceFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BookSourceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RuleBookInfo {
  @JsonKey(name: 'author')
  String? author;

  @JsonKey(name: 'coverUrl')
  String? coverUrl;

  @JsonKey(name: 'init')
  String? init;

  @JsonKey(name: 'intro')
  String? intro;

  @JsonKey(name: 'kind')
  String? kind;

  @JsonKey(name: 'lastChapter')
  String? lastChapter;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'tocUrl')
  String? tocUrl;

  @JsonKey(name: 'wordCount')
  String? wordCount;

  RuleBookInfo();

  static RuleBookInfo fromJson(Map<String, dynamic> srcJson) => _$RuleBookInfoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$RuleBookInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RuleContent {
  @JsonKey(name: 'content')
  String? content;

  @JsonKey(name: 'replaceRegex')
  String? replaceRegex;

  RuleContent();

  static RuleContent fromJson(Map<String, dynamic> srcJson) => _$RuleContentFromJson(srcJson);

  Map<String, dynamic> toJson() => _$RuleContentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RuleExplore {
  @JsonKey(name: 'author')
  String? author;

  @JsonKey(name: 'bookList')
  String? bookList;

  @JsonKey(name: 'bookUrl')
  String? bookUrl;

  @JsonKey(name: 'coverUrl')
  String? coverUrl;

  @JsonKey(name: 'intro')
  String? intro;

  @JsonKey(name: 'kind')
  String? kind;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'wordCount')
  String? wordCount;

  RuleExplore();

  static RuleExplore fromJson(Map<String, dynamic> srcJson) => _$RuleExploreFromJson(srcJson);

  Map<String, dynamic> toJson() => _$RuleExploreToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RuleSearch {
  @JsonKey(name: 'author')
  String? author;

  @JsonKey(name: 'bookList')
  String? bookList;

  @JsonKey(name: 'bookUrl')
  String? bookUrl;

  @JsonKey(name: 'coverUrl')
  String? coverUrl;

  @JsonKey(name: 'intro')
  String? intro;

  @JsonKey(name: 'kind')
  String? kind;

  @JsonKey(name: 'name')
  String? name;

  RuleSearch();

  static RuleSearch fromJson(Map<String, dynamic> srcJson) => _$RuleSearchFromJson(srcJson);

  Map<String, dynamic> toJson() => _$RuleSearchToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RuleToc {
  @JsonKey(name: 'chapterList')
  String? chapterList;

  @JsonKey(name: 'chapterName')
  String? chapterName;

  @JsonKey(name: 'chapterUrl')
  String? chapterUrl;

  @JsonKey(name: 'nextTocUrl')
  String? nextTocUrl;

  RuleToc();

  static RuleToc fromJson(Map<String, dynamic> srcJson) => _$RuleTocFromJson(srcJson);

  Map<String, dynamic> toJson() => _$RuleTocToJson(this);
}
