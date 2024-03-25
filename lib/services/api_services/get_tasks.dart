import 'package:dcc_task_management/models/tasks_model.dart';
import 'package:dcc_task_management/services/app_state/app_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getTasksListNotifier =
    StateNotifierProvider<GetTasksListNotifier, AppState>((ref) {
  return GetTasksListNotifier();
});

class GetTasksListNotifier extends StateNotifier<AppState> {
  GetTasksListNotifier() : super(const AppState.initial());

  Future<void> fetchData() async {
    try {
      final dio = Dio();
      state = const AppState.loading();

      final response = await dio.get("http://18.224.31.159:5000/tasks");

      if (response.statusCode == 200) {
        TasksModel tasksModel =
            TasksModel.fromJson(response.data as Map<String, dynamic>);
        state = AppState.success(data: tasksModel.data);
      } else {
        state = const AppState.error(errorMessage: 'Failed to fetch data');
      }
    } catch (error) {
      state = const AppState.error(errorMessage: 'Failed to fetch data');
    }
  }

  Future<void> refreshApiData() async {
    await fetchData();
  }
}
