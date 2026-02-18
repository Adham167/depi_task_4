import 'package:depi_task4/widgets/custom_tab_bar.dart';
import 'package:depi_task4/widgets/tasks_view_body.dart';
import 'package:flutter/material.dart';

class TasksView extends StatelessWidget {
  const TasksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: TasksViewBody(),
      bottomNavigationBar: CustomTabBar(currentIndex: 0),
    );
  }
}
