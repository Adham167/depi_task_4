import 'package:depi_task4/bloc/tasks_cubit/tasks_cubit.dart';
import 'package:depi_task4/bloc/tasks_cubit/tasks_state.dart';
import 'package:depi_task4/widgets/custom_list_tile.dart';
import 'package:depi_task4/widgets/tasks_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CompletedTasksViewBody extends StatelessWidget {
  const CompletedTasksViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksCubit, TasksState>(
      builder: (context, state) {
        final completedTasks = state.completedTasks;

        return Column(
          children: [
            const SizedBox(height: 100),

            CustomListTile(
              Title: "Completed",
              subTitle: "October 15",
              icon: const CircleAvatar(
                radius: 20,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ),

            TasksListView(tasks: completedTasks),
          ],
        );
      },
    );
  }
}
