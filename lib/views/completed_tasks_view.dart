import 'package:depi_task4/widgets/completed_tasks_view_body.dart';
import 'package:flutter/material.dart';

class CompletedTasksView extends StatelessWidget {
  const CompletedTasksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CompletedTasksViewBody(),
    );
  }
}
