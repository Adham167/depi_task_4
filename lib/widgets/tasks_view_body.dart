import 'package:depi_task4/widgets/tasks_list_tile_widget.dart';
import 'package:depi_task4/widgets/tasks_list_view.dart';
import 'package:flutter/material.dart';

class TasksViewBody extends StatelessWidget {
  const TasksViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [TasksListTileWidget(), TasksListView()]);
  }
}
