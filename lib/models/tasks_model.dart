import 'package:freezed_annotation/freezed_annotation.dart';

part 'tasks_model.g.dart';
part 'tasks_model.freezed.dart';

@freezed
class TasksModel with _$TasksModel {
  const TasksModel._();
  const factory TasksModel({
    @Default(true) bool success,
     @Default("") String statusCode,
    required TasksModelData data,
  }) = _TasksModel;

  factory TasksModel.fromJson(Map<String, dynamic> json) =>
      _$TasksModelFromJson(json);
}

@freezed
class TasksModelData with _$TasksModelData {
  const TasksModelData._();
  const factory TasksModelData({
     @Default("") String title,
     @Default("") String description,
     @Default(false) bool completed,
      
  }) = _TasksModelData;

  factory TasksModelData.fromJson(Map<String, dynamic> json) =>
      _$TasksModelDataFromJson(json);
}

 
