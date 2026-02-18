import 'package:flutter/material.dart';

class TasksView extends StatelessWidget {
  const TasksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ListTile(
            title: Text(
              "Tasks",
              style: TextStyle(
                color: Colors.black,
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              "October 15",
              style: TextStyle(
                color: Color(0xFF757575),
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
            ),
            trailing: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.black,
              child: InkWell(
                onTap: () {},
                child: Icon(Icons.add, color: Colors.white, size: 35),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
