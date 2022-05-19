// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostEntity _$$_PostEntityFromJson(Map<String, dynamic> json) =>
    _$_PostEntity(
      id: json['id'] as String?,
      createdAt: _fromJson(json['createdAt'] as Timestamp),
      isPublic: json['isPublic'] as bool?,
      userId: json['userId'] as String?,
      title: json['title'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$_PostEntityToJson(_$_PostEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': _toJson(instance.createdAt),
      'isPublic': instance.isPublic,
      'userId': instance.userId,
      'title': instance.title,
      'content': instance.content,
    };
