
import 'package:flutter/material.dart';

class TasksListView extends StatelessWidget {
  const TasksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Checkbox(
              splashRadius: 20,
              activeColor: Colors.green,
              value: true,
              onChanged: (_) {},
            ),
            title: Text(
              "Adham AbdelsalamAdham AbdelsalamAdham AbdelsalamAdham AbdelsalamAdham AbdelsalamAdham AbdelsalamAdham Abdelsalam",
              style: TextStyle(
                color: Color(0xFF737373),
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            ),
            subtitle: Text(
              "1:20 Am",
              style: TextStyle(
                color: Color(0xFFA3A3A3),
                fontWeight: FontWeight.normal,
                fontSize: 13,
              ),
            ),
          );
        },
      ),
    );
  }
}
