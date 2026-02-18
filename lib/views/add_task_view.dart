import 'package:depi_task4/controllers/add_task_provider.dart';
import 'package:depi_task4/controllers/tasks_provider.dart';
import 'package:depi_task4/models/task_model.dart';
import 'package:depi_task4/widgets/category_selector.dart';
import 'package:depi_task4/widgets/date_picker_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AddTaskProvider(),
      child: const _AddTaskView(),
    );
  }
}

class _AddTaskView extends StatelessWidget {
  const _AddTaskView();

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<AddTaskProvider>();

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
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),

              Spacer(flex: 1),
              const Text(
                "Task Name",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: provider.titleController,
                decoration: const InputDecoration(hintText: "Enter task name"),
              ),

              const SizedBox(height: 20),

              const CategorySelector(),

              const SizedBox(height: 24),

              const DatePickerField(),
              Spacer(flex: 2),
              GestureDetector(
                onTap: () {
                  final addProvider = context.read<AddTaskProvider>();

                  if (addProvider.titleController.text.isEmpty ||
                      addProvider.selectedDate == null) {
                    return;
                  }

                  final newTask = TaskModel(
                    title: addProvider.titleController.text,
                    id: DateTime.now().toString(),
                    dateTime: addProvider.selectedDate!,
                  );

                  context.read<TasksProvider>().addTask(newTask);

                  Navigator.pop(context);
                },
                child: Container(
                  height: 48,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Text(
                      "Save",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
