// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Base _$BaseFromJson(Map<String, dynamic> json) {
  return Base(
      code: json['code'] as int,
      errorMsg: json['errorMsg'] as String,
      data: json['data']);
}

Map<String, dynamic> _$BaseToJson(Base instance) => <String, dynamic>{
      'code': instance.code,
      'errorMsg': instance.errorMsg,
      'data': instance.data
    };
