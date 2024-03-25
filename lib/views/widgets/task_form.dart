import 'package:dcc_task_management/models/tasks_model.dart';
import 'package:dcc_task_management/services/api_services/add_tasks.dart';
import 'package:dcc_task_management/services/api_services/edit_tasks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TaskFormView extends ConsumerStatefulWidget {
  const TaskFormView({super.key, this.tasksModelData});
  final TasksModelData? tasksModelData;

  @override
  ConsumerState<TaskFormView> createState() => _TaskFormViewState();
}

class _TaskFormViewState extends ConsumerState<TaskFormView> {
  final GlobalKey<FormState> _tasksFormKey = GlobalKey<FormState>();
  final TextEditingController _taskTitleTextEditingController =
      TextEditingController();
  final TextEditingController _taskDescriptionTextEditingController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.tasksModelData != null) {
      setState(() {
        _taskTitleTextEditingController.text = widget.tasksModelData!.title;
        _taskDescriptionTextEditingController.text =
            widget.tasksModelData!.description;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Form(
              key: _tasksFormKey,
              child: Column(
                children: [
                  Container(
                    height: 50,
                    color: Colors.white,
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Add Task Title';
                        }
                        return null;
                      },
                      controller: _taskTitleTextEditingController,
                      autofocus: true,
                      decoration: const InputDecoration(
                        counterText: '',
                        hintText: 'Task Title',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 12),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    color: Colors.white,
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Add Task Description';
                        }
                        return null;
                      },
                      controller: _taskDescriptionTextEditingController,
                      autofocus: true,
                      decoration: const InputDecoration(
                        counterText: '',
                        hintText: 'Task Description',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 12),
                      ),
                    ),
                  )
                ],
              )),
        ),
        Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(top: 16),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  if (_tasksFormKey.currentState!.validate()) {
                    if (widget.tasksModelData != null) {
                      ref.read(editTaskNotifier.notifier).editTask(
                          widget.tasksModelData!.id,
                          TasksModelData(
                              title: _taskTitleTextEditingController.text,
                              description:
                                  _taskDescriptionTextEditingController.text));
                    } else {
                      ref.read(addTasksNotifier.notifier).postData(
                          TasksModelData(
                              title: _taskTitleTextEditingController.text,
                              description:
                                  _taskDescriptionTextEditingController.text));
                    }

                    _taskTitleTextEditingController.clear();
                    _taskDescriptionTextEditingController.clear();
                    Navigator.pop(context);
                  }
                },
                child: Text(
                  widget.tasksModelData != null ? "Edit Task" : 'ADD Task',
                  style: const TextStyle(color: Colors.white),
                ))),
      ],
    ));
  }
}
