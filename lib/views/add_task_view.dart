import 'package:depi_task4/bloc/add_tasks_cubit/add_tasks_cubit_cubit.dart';
import 'package:depi_task4/bloc/add_tasks_cubit/add_tasks_cubit_state.dart';
import 'package:depi_task4/bloc/tasks_cubit/tasks_cubit.dart';
import 'package:depi_task4/models/task_model.dart';
import 'package:depi_task4/widgets/category_selector.dart';
import 'package:depi_task4/widgets/date_picker_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AddTaskCubit(), // هنا بنعمل Cubit جديد
      child: _AddTaskView(), // الـ widget اللي هتبني الـ UI
    );
  }
}

class _AddTaskView extends StatelessWidget {
  const _AddTaskView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddTaskCubit, AddTaskState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("Cancel"),
                  ),
                  const SizedBox(height: 10),
                  const Center(
                    child: Text(
                      "Add New Task",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "Task Name",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: state.titleController,
                    decoration:
                        const InputDecoration(hintText: "Enter task name"),
                  ),
                  const SizedBox(height: 20),
                  const CategorySelector(),
                  const SizedBox(height: 24),
                  const DatePickerField(),
                  const Spacer(flex: 2),
                  GestureDetector(
                    onTap: () {
                      if (state.titleController.text.isEmpty ||
                          state.selectedDate == null) return;

                      final newTask = TaskModel(
                        title: state.titleController.text,
                        id: DateTime.now().toString(),
                        dateTime: state.selectedDate!,
                      );

                      context.read<TasksCubit>().addTask(newTask);
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 48,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Center(
                        child: Text(
                          "Save",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 24),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
