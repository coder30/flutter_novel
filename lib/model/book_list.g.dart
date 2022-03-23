// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookList _$BookListFromJson(Map<String, dynamic> json) => BookList(
      Ranking.fromJson(json['ranking'] as Map<String, dynamic>),
      json['ok'] as bool,
    );

Map<String, dynamic> _$BookListToJson(BookList instance) => <String, dynamic>{
      'ranking': instance.ranking,
      'ok': instance.ok,
    };

Ranking _$RankingFromJson(Map<String, dynamic> json) => Ranking(
      json['id'] as String,
      json['updated'] as String,
      json['title'] as String,
      json['tag'] as String,
      json['cover'] as String,
      json['icon'] as String,
      json['__v'] as int,
      json['monthRank'] as String,
      json['totalRank'] as String,
      json['shortTitle'] as String,
      json['created'] as String,
      json['biTag'] as String,
      json['isSub'] as bool,
      json['collapse'] as bool,
      json['gender'] as String,
      json['priority'] as int,
      (json['books'] as List<dynamic>)
          .map((e) => Books.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['total'] as int,
    );

Map<String, dynamic> _$RankingToJson(Ranking instance) => <String, dynamic>{
      'updated': instance.updated,
      'title': instance.title,
      'tag': instance.tag,
      'cover': instance.cover,
      'icon': instance.icon,
      '__v': instance.v,
      'monthRank': instance.monthRank,
      'totalRank': instance.totalRank,
      'shortTitle': instance.shortTitle,
      'created': instance.created,
      'biTag': instance.biTag,
      'isSub': instance.isSub,
      'collapse': instance.collapse,
      'gender': instance.gender,
      'priority': instance.priority,
      'books': instance.books,
      'id': instance.id,
      'total': instance.total,
    };

Books _$BooksFromJson(Map<String, dynamic> json) => Books(
      json['_id'] as String,
      json['site'] as String,
      json['author'] as String,
      json['majorCate'] as String,
      json['minorCate'] as String,
      json['title'] as String,
      json['cover'] as String,
      json['shortIntro'] as String,
      json['allowMonthly'] as bool,
      json['banned'] as int,
      json['latelyFollower'] as int,
      json['retentionRatio'] as String,
    );

Map<String, dynamic> _$BooksToJson(Books instance) => <String, dynamic>{
      '_id': instance.id,
      'site': instance.site,
      'author': instance.author,
      'majorCate': instance.majorCate,
      'minorCate': instance.minorCate,
      'title': instance.title,
      'cover': instance.cover,
      'shortIntro': instance.shortIntro,
      'allowMonthly': instance.allowMonthly,
      'banned': instance.banned,
      'latelyFollower': instance.latelyFollower,
      'retentionRatio': instance.retentionRatio,
    };
