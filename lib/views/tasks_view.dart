import 'package:depi_task4/widgets/tasks_list_tile_widget.dart';
import 'package:flutter/material.dart';

class TasksView extends StatelessWidget {
  const TasksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          TasksListTileWidget(),
        ],
      ),
    );
  }
}
