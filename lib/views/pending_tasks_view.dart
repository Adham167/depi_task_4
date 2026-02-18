import 'package:depi_task4/widgets/pending_task_view_body.dart';
import 'package:flutter/material.dart';

class PendingTasksView extends StatelessWidget {
  const PendingTasksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PendingTaskViewBody(),
    );
  }
}

