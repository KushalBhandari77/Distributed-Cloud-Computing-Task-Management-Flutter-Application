import 'package:dcc_task_management/services/api_services/api_services.dart';
import 'package:dcc_task_management/views/task_management_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(getTasksListNotifier.notifier).fetchData();
    });
  }

  @override
  Widget build(BuildContext context) {
    final tasksDataState = ref.watch(getTasksListNotifier);
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Task Management",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: tasksDataState.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (errorMessage) {
            return Center(
              child: Text(errorMessage),
            );
          },
          success: (data) {
            return TaskManagementView(
              tasksDataList: data,
            );
          },
          initial: () => const SizedBox(),
        ));
  }
}
