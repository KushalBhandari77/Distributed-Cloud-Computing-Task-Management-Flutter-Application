import 'package:dcc_task_management/services/app_state/app_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final deleteTaskNotifier =
    StateNotifierProvider<DeleteTaskNotifier, AppState>((ref) {
  return DeleteTaskNotifier();
});

class DeleteTaskNotifier extends StateNotifier<AppState> {
  DeleteTaskNotifier() : super(const AppState.initial());

  Future<void> deleteTask(int taskId) async {
    try {
      final dio = Dio();
      state = const AppState.loading();

      final response =
          await dio.delete("http://18.224.31.159:5000/tasks/$taskId");

      if (response.statusCode == 200) {
        state = const AppState.success(data: []);
      } else {
        state = const AppState.error(errorMessage: 'Failed to delete task');
      }
    } catch (error) {
      state = const AppState.error(errorMessage: 'Failed to delete task');
    }
  }
}
