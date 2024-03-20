import 'package:flutter/material.dart';

class TaskFormView extends StatefulWidget {
  const TaskFormView({super.key});

  @override
  State<TaskFormView> createState() => _TaskFormViewState();
}

class _TaskFormViewState extends State<TaskFormView> {
  final GlobalKey<FormState> _tasksFormKey = GlobalKey<FormState>();
  final TextEditingController _taskTitleTextEditingController =
      TextEditingController();
  final TextEditingController _taskDescriptionTextEditingController =
      TextEditingController();

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
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)),
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
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.red,
                        )),
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
                  /// Validates the form.
                  if (_tasksFormKey.currentState!.validate()) {
                    _taskTitleTextEditingController.clear();
                    _taskDescriptionTextEditingController.clear();

                    Navigator.pop(context);
                  }
                },
                child: const Text(
                  'ADD',
                  style: TextStyle(color: Colors.white),
                ))),
      ],
    ));
  }
}
