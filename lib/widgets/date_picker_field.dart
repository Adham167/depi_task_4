import 'package:depi_task4/controllers/add_task_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DatePickerField extends StatelessWidget {
  const DatePickerField({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<AddTaskProvider>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Task Date", style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        TextFormField(
          readOnly: true,
          controller: TextEditingController(
            text: provider.selectedDate == null
                ? ''
                : "${provider.selectedDate!.day}/${provider.selectedDate!.month}/${provider.selectedDate!.year}",
          ),
          decoration: InputDecoration(
            hint: Text("10/20/24"),
            suffixIcon: IconButton(
              icon: const Icon(Icons.calendar_month),
              onPressed: () {
                provider.pickDate(context);
              },
            ),
          ),
        ),
      ],
    );
  }
}
