import 'package:dcc_task_management/models/tasks_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial() = InitialState;
  const factory AppState.loading() = LoadingState;
  const factory AppState.error({required String errorMessage}) = ErrorState;
  const factory AppState.success({required List<TasksModelData> data}) =
      SuccessState;
}
