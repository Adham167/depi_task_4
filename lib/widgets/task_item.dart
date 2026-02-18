
import 'package:depi_task4/controllers/tasks_provider.dart';
import 'package:depi_task4/models/task_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskItem extends StatelessWidget {
  final TaskModel task;

  const TaskItem({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        context.read<TasksProvider>().toggleTask(task.id);
      },
      leading: Checkbox(
        splashRadius: 20,
        activeColor: Colors.green,
        value: task.isChecked,
        onChanged: (_) {
          context.read<TasksProvider>().toggleTask(task.id);
        },
      ),
      title: Text(
        task.title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: const Color(0xFF737373),
          fontSize: 15,
          decoration: task.isChecked
              ? TextDecoration.lineThrough
              : TextDecoration.none,
        ),
      ),
      subtitle: Text(
        "${task.dateTime.hour}:${task.dateTime.minute}",
        style: const TextStyle(color: Color(0xFFA3A3A3), fontSize: 13),
      ),
    );
  }
}