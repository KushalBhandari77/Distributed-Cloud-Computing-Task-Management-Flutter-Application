import 'package:dcc_task_management/models/tasks_model.dart';
import 'package:dcc_task_management/services/app_state/app_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final addTasksNotifier =
    StateNotifierProvider<AddTasksNotifier, AppState>((ref) {
  return AddTasksNotifier();
});

class AddTasksNotifier extends StateNotifier<AppState> {
  AddTasksNotifier() : super(const AppState.initial());

  Future<void> postData(TasksModelData tasksModel) async {
    try {
      final dio = Dio();
      state = const AppState.loading();

      final Map<String, dynamic> requestData = tasksModel.toJson();

      final response =
          await dio.post("http://18.224.31.159:5000/tasks", data: requestData);

      if (response.statusCode == 200) {
        state = const AppState.success(data: []);
      } else {
        state = const AppState.error(errorMessage: 'Failed to add task');
      }
    } catch (error) {
      state = const AppState.error(errorMessage: 'Failed to add task');
    }
  }
}
