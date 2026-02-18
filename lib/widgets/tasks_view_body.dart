import 'package:depi_task4/widgets/custom_list_tile.dart';
import 'package:depi_task4/widgets/tasks_list_view.dart';
import 'package:flutter/material.dart';

class TasksViewBody extends StatelessWidget {
  const TasksViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 100),
        CustomListTile(
          Title: "Tasks",
          subTitle: "october 10",
          icon: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.black,
            child: InkWell(
              onTap: () {},
              child: Icon(Icons.add, color: Colors.white, size: 35),
            ),
          ),
        ),
        TasksListView(),
      ],
    );
  }
}
