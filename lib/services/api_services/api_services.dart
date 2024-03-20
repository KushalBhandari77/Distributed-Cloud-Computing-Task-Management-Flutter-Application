import 'package:dcc_task_management/models/tasks_model.dart';
import 'package:dcc_task_management/services/app_state/app_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getTasksListNotifier =
    StateNotifierProvider<GetTasksListNotifier, AppState>((ref) {
  return GetTasksListNotifier();
});

class GetTasksListNotifier extends StateNotifier<AppState> {
  GetTasksListNotifier() : super(const AppState.initial());

  Future<void> fetchData() async {
    try {
      // Set loading state
      // state = const AppState.loading();

      // Call your API to fetch data
      // final data = await fetchDataFromApi();

      if (dataList.isNotEmpty) {
        state = AppState.success(data: dataList);
      }
    } catch (error) {
      // Set error state with error message
      state = const AppState.error(errorMessage: 'Failed to fetch data');
    }
  }
}

List<TasksModelData> dataList = [
  TasksModelData(
      title: "TITLE", description: "This is Description", completed: false),
  TasksModelData(
      title: "TITLE", description: "This is Description", completed: false),
  TasksModelData(
      title: "TITLE", description: "This is Description", completed: true),
  TasksModelData(
      title: "TITLE", description: "This is Description", completed: false),
  TasksModelData(
      title: "TITLE", description: "This is Description", completed: false),
];
