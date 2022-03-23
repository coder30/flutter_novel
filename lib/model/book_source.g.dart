// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookSource _$BookSourceFromJson(Map<String, dynamic> json) => BookSource()
  ..bookSourceComment = json['bookSourceComment'] as String?
  ..bookSourceGroup = json['bookSourceGroup'] as String?
  ..bookSourceName = json['bookSourceName'] as String?
  ..bookSourceType = json['bookSourceType'] as int?
  ..bookSourceUrl = json['bookSourceUrl'] as String?
  ..customOrder = json['customOrder'] as int?
  ..enabled = json['enabled'] as bool?
  ..enabledExplore = json['enabledExplore'] as bool?
  ..exploreUrl = json['exploreUrl'] as String?
  ..lastUpdateTime = json['lastUpdateTime'] as int?
  ..respondTime = json['respondTime'] as int?
  ..ruleBookInfo = json['ruleBookInfo'] == null
      ? null
      : RuleBookInfo.fromJson(json['ruleBookInfo'] as Map<String, dynamic>)
  ..ruleContent = json['ruleContent'] == null
      ? null
      : RuleContent.fromJson(json['ruleContent'] as Map<String, dynamic>)
  ..ruleExplore = json['ruleExplore'] == null
      ? null
      : RuleExplore.fromJson(json['ruleExplore'] as Map<String, dynamic>)
  ..ruleSearch = json['ruleSearch'] == null
      ? null
      : RuleSearch.fromJson(json['ruleSearch'] as Map<String, dynamic>)
  ..ruleToc = json['ruleToc'] == null
      ? null
      : RuleToc.fromJson(json['ruleToc'] as Map<String, dynamic>)
  ..searchUrl = json['searchUrl'] as String?
  ..weight = json['weight'] as int?;

Map<String, dynamic> _$BookSourceToJson(BookSource instance) =>
    <String, dynamic>{
      'bookSourceComment': instance.bookSourceComment,
      'bookSourceGroup': instance.bookSourceGroup,
      'bookSourceName': instance.bookSourceName,
      'bookSourceType': instance.bookSourceType,
      'bookSourceUrl': instance.bookSourceUrl,
      'customOrder': instance.customOrder,
      'enabled': instance.enabled,
      'enabledExplore': instance.enabledExplore,
      'exploreUrl': instance.exploreUrl,
      'lastUpdateTime': instance.lastUpdateTime,
      'respondTime': instance.respondTime,
      'ruleBookInfo': instance.ruleBookInfo?.toJson(),
      'ruleContent': instance.ruleContent?.toJson(),
      'ruleExplore': instance.ruleExplore?.toJson(),
      'ruleSearch': instance.ruleSearch?.toJson(),
      'ruleToc': instance.ruleToc?.toJson(),
      'searchUrl': instance.searchUrl,
      'weight': instance.weight,
    };

RuleBookInfo _$RuleBookInfoFromJson(Map<String, dynamic> json) => RuleBookInfo()
  ..author = json['author'] as String?
  ..coverUrl = json['coverUrl'] as String?
  ..init = json['init'] as String?
  ..intro = json['intro'] as String?
  ..kind = json['kind'] as String?
  ..lastChapter = json['lastChapter'] as String?
  ..name = json['name'] as String?
  ..tocUrl = json['tocUrl'] as String?
  ..wordCount = json['wordCount'] as String?;

Map<String, dynamic> _$RuleBookInfoToJson(RuleBookInfo instance) =>
    <String, dynamic>{
      'author': instance.author,
      'coverUrl': instance.coverUrl,
      'init': instance.init,
      'intro': instance.intro,
      'kind': instance.kind,
      'lastChapter': instance.lastChapter,
      'name': instance.name,
      'tocUrl': instance.tocUrl,
      'wordCount': instance.wordCount,
    };

RuleContent _$RuleContentFromJson(Map<String, dynamic> json) => RuleContent()
  ..content = json['content'] as String?
  ..replaceRegex = json['replaceRegex'] as String?;

Map<String, dynamic> _$RuleContentToJson(RuleContent instance) =>
    <String, dynamic>{
      'content': instance.content,
      'replaceRegex': instance.replaceRegex,
    };

RuleExplore _$RuleExploreFromJson(Map<String, dynamic> json) => RuleExplore()
  ..author = json['author'] as String?
  ..bookList = json['bookList'] as String?
  ..bookUrl = json['bookUrl'] as String?
  ..coverUrl = json['coverUrl'] as String?
  ..intro = json['intro'] as String?
  ..kind = json['kind'] as String?
  ..name = json['name'] as String?
  ..wordCount = json['wordCount'] as String?;

Map<String, dynamic> _$RuleExploreToJson(RuleExplore instance) =>
    <String, dynamic>{
      'author': instance.author,
      'bookList': instance.bookList,
      'bookUrl': instance.bookUrl,
      'coverUrl': instance.coverUrl,
      'intro': instance.intro,
      'kind': instance.kind,
      'name': instance.name,
      'wordCount': instance.wordCount,
    };

RuleSearch _$RuleSearchFromJson(Map<String, dynamic> json) => RuleSearch()
  ..author = json['author'] as String?
  ..bookList = json['bookList'] as String?
  ..bookUrl = json['bookUrl'] as String?
  ..coverUrl = json['coverUrl'] as String?
  ..intro = json['intro'] as String?
  ..kind = json['kind'] as String?
  ..name = json['name'] as String?;

Map<String, dynamic> _$RuleSearchToJson(RuleSearch instance) =>
    <String, dynamic>{
      'author': instance.author,
      'bookList': instance.bookList,
      'bookUrl': instance.bookUrl,
      'coverUrl': instance.coverUrl,
      'intro': instance.intro,
      'kind': instance.kind,
      'name': instance.name,
    };

RuleToc _$RuleTocFromJson(Map<String, dynamic> json) => RuleToc()
  ..chapterList = json['chapterList'] as String?
  ..chapterName = json['chapterName'] as String?
  ..chapterUrl = json['chapterUrl'] as String?
  ..nextTocUrl = json['nextTocUrl'] as String?;

Map<String, dynamic> _$RuleTocToJson(RuleToc instance) => <String, dynamic>{
      'chapterList': instance.chapterList,
      'chapterName': instance.chapterName,
      'chapterUrl': instance.chapterUrl,
      'nextTocUrl': instance.nextTocUrl,
    };
