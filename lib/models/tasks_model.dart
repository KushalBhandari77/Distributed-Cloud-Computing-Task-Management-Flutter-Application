import 'package:freezed_annotation/freezed_annotation.dart';

part "tasks_model.freezed.dart";
part "tasks_model.g.dart";

@freezed
class TasksModel with _$TasksModel {
  factory TasksModel(
      {@Default(false) bool success,
      @Default("") String statusCode,
      required TasksModelData data}) = _TasksModel;

  factory TasksModel.fromJson(Map<String, dynamic> json) =>
      _$TasksModelFromJson(json);
}

@freezed
class TasksModelData with _$TasksModelData {
  factory TasksModelData(
      {@Default("") String title,
      @Default("") String description,
      @Default(false) bool completed}) = _TasksModelData;

  factory TasksModelData.fromJson(Map<String, dynamic> json) =>
      _$TasksModelDataFromJson(json);
}
