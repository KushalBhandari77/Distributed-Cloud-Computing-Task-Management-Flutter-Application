// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TasksModelImpl _$$TasksModelImplFromJson(Map<String, dynamic> json) =>
    _$TasksModelImpl(
      success: json['success'] as bool? ?? false,
      statusCode: json['statusCode'] as int? ?? -1,
      data: (json['data'] as List<dynamic>)
          .map((e) => TasksModelData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TasksModelImplToJson(_$TasksModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'statusCode': instance.statusCode,
      'data': instance.data,
    };

_$TasksModelDataImpl _$$TasksModelDataImplFromJson(Map<String, dynamic> json) =>
    _$TasksModelDataImpl(
      id: json['id'] as int? ?? -1,
      title: json['title'] as String? ?? "",
      description: json['description'] as String? ?? "",
      completed: json['completed'] as bool? ?? false,
    );

Map<String, dynamic> _$$TasksModelDataImplToJson(
        _$TasksModelDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'completed': instance.completed,
    };
