import 'package:dcc_task_management/models/tasks_model.dart';
import 'package:dcc_task_management/services/api_services/add_tasks.dart';
import 'package:dcc_task_management/services/api_services/delete_tasks.dart';
import 'package:dcc_task_management/services/api_services/edit_tasks.dart';
import 'package:dcc_task_management/services/api_services/get_tasks.dart';
import 'package:dcc_task_management/services/app_state/app_state.dart';
import 'package:dcc_task_management/views/widgets/task_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TaskManagementView extends ConsumerStatefulWidget {
  const TaskManagementView({super.key, required this.tasksDataList});
  final List<TasksModelData> tasksDataList;
  @override
  ConsumerState<TaskManagementView> createState() => _TaskManagementViewState();
}

class _TaskManagementViewState extends ConsumerState<TaskManagementView> {
  @override
  Widget build(BuildContext context) {
    ref.listen<AppState>(addTasksNotifier, (previousState, state) {
      state.maybeMap(
        success: (_) {
          WidgetsBinding.instance.addPostFrameCallback(
            (_) {
              ref.read(getTasksListNotifier.notifier).refreshApiData();
            },
          );
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Tasks Added Successfully!"),
              backgroundColor: Colors.green,
            ),
          );
        },
        error: (errorState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(errorState.errorMessage),
              backgroundColor: Colors.red,
            ),
          );
        },
        orElse: () {},
      );
    });

    ref.listen<AppState>(deleteTaskNotifier, (previousState, state) {
      state.maybeMap(
        loading: (value) {
          const Center(
            child: CircularProgressIndicator(),
          );
        },
        success: (_) {
          WidgetsBinding.instance.addPostFrameCallback(
            (_) {
              ref.read(getTasksListNotifier.notifier).refreshApiData();
            },
          );
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Tasks Deleted Successfully!"),
              backgroundColor: Colors.green,
            ),
          );
        },
        error: (errorState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(errorState.errorMessage),
              backgroundColor: Colors.red,
            ),
          );
        },
        orElse: () {},
      );
    });

    ref.listen<AppState>(editTaskNotifier, (previousState, state) {
      state.maybeMap(
        loading: (value) {
          const Center(
            child: CircularProgressIndicator(),
          );
        },
        success: (_) {
          WidgetsBinding.instance.addPostFrameCallback(
            (_) {
              ref.read(getTasksListNotifier.notifier).refreshApiData();
            },
          );
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Tasks Edited Successfully!"),
              backgroundColor: Colors.green,
            ),
          );
        },
        error: (errorState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(errorState.errorMessage),
              backgroundColor: Colors.red,
            ),
          );
        },
        orElse: () {},
      );
    });

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: ((BuildContext context) {
                return const AlertDialog(
                  buttonPadding: EdgeInsets.zero,
                  content: TaskFormView(),
                );
              }));
        },
        child: const Icon(Icons.add),
      ),
      body: widget.tasksDataList.isEmpty
          ? const Center(
              child: Text(
                  "Let's Start with adding the tasks.\nTo Begin Press the Add Button below"),
            )
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ListView.builder(
                      itemCount: widget.tasksDataList.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Card(
                          color: widget.tasksDataList[index].completed
                              ? const Color.fromARGB(255, 162, 240, 165)
                              : const Color.fromARGB(255, 248, 221, 140),
                          child: ListTile(
                            contentPadding:
                                const EdgeInsets.fromLTRB(16, 4, 0, 4),
                            title: Text(
                              widget.tasksDataList[index].title,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(widget.tasksDataList[index].description),
                                Row(
                                  children: [
                                    const Text("Status: "),
                                    Text(
                                      widget.tasksDataList[index].completed
                                          ? "Completed"
                                          : "Not Completed",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            trailing: PopupMenuButton(
                              itemBuilder: (BuildContext context) =>
                                  <PopupMenuEntry>[
                                PopupMenuItem(
                                  value: '0',
                                  child: Text(
                                      widget.tasksDataList[index].completed
                                          ? "Mark Incomplete"
                                          : 'Mark Completed'),
                                ),
                                const PopupMenuItem(
                                  value: '1',
                                  child: Text('Edit'),
                                ),
                                const PopupMenuItem(
                                  value: '2',
                                  child: Text('Delete'),
                                ),
                              ],
                              onSelected: (value) async {
                                switch (value) {
                                  case '0':
                                    ref
                                        .read(editTaskNotifier.notifier)
                                        .editTask(
                                            widget.tasksDataList[index].id,
                                            TasksModelData(
                                                title: widget
                                                    .tasksDataList[index].title,
                                                description: widget
                                                    .tasksDataList[index]
                                                    .description,
                                                completed: !widget
                                                    .tasksDataList[index]
                                                    .completed));
                                  case '1':
                                    await showDialog(
                                        context: context,
                                        builder: ((BuildContext context) {
                                          return AlertDialog(
                                            buttonPadding: EdgeInsets.zero,
                                            content: TaskFormView(
                                                tasksModelData: widget
                                                    .tasksDataList[index]),
                                          );
                                        }));

                                  case '2':
                                    ref
                                        .read(deleteTaskNotifier.notifier)
                                        .deleteTask(
                                            widget.tasksDataList[index].id);
                                }
                              },
                            ),
                          ),
                        );
                      }),
                ],
              ),
            ),
    );
  }
}
