import 'package:depi_task4/widgets/custom_list_tile.dart';
import 'package:depi_task4/widgets/tasks_list_view.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CompletedTasksViewBody extends StatelessWidget {
  const CompletedTasksViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        // Spacer(),
        // GNav(
        //   backgroundColor: Colors.white,
        //   gap: 8,
        //   padding: EdgeInsets.all(12),
        //   tabs: [
        //     GButton(text: 'Home', icon: Icons.home),
        //     GButton(text: 'Search', icon: Icons.search),
        //     GButton(text: 'Profile', icon: Icons.person),
        //   ],
        // ),
      ],
    );
  }
}
