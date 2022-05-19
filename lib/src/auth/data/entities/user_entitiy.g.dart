// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entitiy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserEntity _$$_UserEntityFromJson(Map<String, dynamic> json) =>
    _$_UserEntity(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      emailVerified: json['emailVerified'] as bool?,
      photoURL: json['photoURL'] as String?,
    );

Map<String, dynamic> _$$_UserEntityToJson(_$_UserEntity instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'email': instance.email,
      'emailVerified': instance.emailVerified,
      'photoURL': instance.photoURL,
    };
