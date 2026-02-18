import 'package:depi_task4/widgets/custom_list_tile.dart';
import 'package:depi_task4/widgets/tasks_list_view.dart';
import 'package:flutter/material.dart';

class PendingTaskViewBody extends StatelessWidget {
  const PendingTaskViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
                SizedBox(height: 100),

        CustomListTile(
          Title: "Pending",
          subTitle: "october 10",
          icon: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.deepOrange,
            child: InkWell(
              onTap: () {},
              child: Icon(Icons.alarm, color: Colors.white, size: 25),
            ),
          ),
        ),
        TasksListView(),
      ],
    );
  }
}
