import 'package:dcc_task_management/models/tasks_model.dart';
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
                          child: ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  widget.tasksDataList[index].title,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.more_vert))
                              ],
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
                                          .toString(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )
                              ],
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
