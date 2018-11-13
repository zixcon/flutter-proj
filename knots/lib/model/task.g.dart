// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) {
  return Task(
      name: json['name'] as String,
      category: json['category'] as String,
      time: json['time'] as String,
      completed: json['completed'] as bool);
}

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
      'name': instance.name,
      'category': instance.category,
      'time': instance.time,
      'completed': instance.completed
    };
