import 'package:depi_task4/widgets/custom_list_tile.dart';
import 'package:depi_task4/widgets/tasks_list_view.dart';
import 'package:flutter/material.dart';

class CompletedTasksViewBody extends StatelessWidget {
  const CompletedTasksViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 100),

        CustomListTile(
          Title: "Compelted",
          subTitle: "October 15",
          icon: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.green,
            child: InkWell(
              onTap: () {},
              child: Icon(Icons.check, color: Colors.white, size: 25),
            ),
          ),
        ),
        TasksListView(),
      ],
    );
  }
}
