// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'users_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      password: json['password'] as String,
      username: json['username'] as String,
      name: json['name'] as String,
      section: json['section'] as String,
      surname: json['surname'] as String,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'password': instance.password,
      'username': instance.username,
      'name': instance.name,
      'section': instance.section,
      'surname': instance.surname,
    };
