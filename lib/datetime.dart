import 'package:flutter/material.dart';

class Datetime extends StatefulWidget {
  const Datetime(int i, {super.key});

  @override
  State<Datetime> createState() => _DatetimeState();
}

class _DatetimeState extends State<Datetime> {
  String selectedDate = "No Date";
  String selectedTime = "No Time";
  Future<void> pickDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1990),
      lastDate: DateTime(3000),
    );

    if (pickedDate != null) {
      setState(() {
        selectedDate =
            "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
      });
    }
  }

  Future<void> pickTime() async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      setState(() {
        selectedTime = pickedTime.format(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          children: [
            ElevatedButton(onPressed: pickDate, child: Text("Pick Date")),
            Text(selectedDate),

            ElevatedButton(onPressed: pickTime, child: Text("Pick Time")),
            Text(selectedTime),
          ],
        ),
      ),
    );
  }
}
