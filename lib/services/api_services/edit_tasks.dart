import 'package:dcc_task_management/models/tasks_model.dart';
import 'package:dcc_task_management/services/app_state/app_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final editTaskNotifier =
    StateNotifierProvider<EditTaskNotifier, AppState>((ref) {
  return EditTaskNotifier();
});

class EditTaskNotifier extends StateNotifier<AppState> {
  EditTaskNotifier() : super(const AppState.initial());

  Future<void> editTask(int taskId, TasksModelData updatedTask) async {
    try {
      final dio = Dio();
      state = const AppState.loading();

      final Map<String, dynamic> requestData = updatedTask.toJson();

      final response = await dio.put("http://18.224.31.159:5000/tasks/$taskId",
          data: requestData);

      if (response.statusCode == 200) {
        state = const AppState.success(data: []);
      } else {
        state = const AppState.error(errorMessage: 'Failed to edit task');
      }
    } catch (error) {
      state = const AppState.error(errorMessage: 'Failed to edit task');
    }
  }
}
