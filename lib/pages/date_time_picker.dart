// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';

class DateTimePage extends StatelessWidget {
  const DateTimePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DateTimepage();
  }
}

class DateTimepage extends StatefulWidget {
  const DateTimepage({super.key});

  @override
  State<DateTimepage> createState() => _DateTimepageState();
}

class _DateTimepageState extends State<DateTimepage> {
  DateTime? _dateTime;
  TimeOfDay? _timeOfDay;

  getDate() async {
    DateTime? date = await showDatePicker(
        context: context,
        initialDate: DateTime(DateTime.now().year),
        firstDate: DateTime(DateTime.now().year - 20),
        lastDate: DateTime(DateTime.now().year + 2));

    setState(() {
      _dateTime = date;
    });
  }

  getTime() async {
    TimeOfDay? time =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());

    setState(() {
      _timeOfDay = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Date & Time picker"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    // setState(() {

                    // });
                    getDate();
                  },
                  child: _dateTime == "null" || _dateTime == null
                      ? const Text("Date Picker")
                      : Text("Date : ${_dateTime}")),
              ElevatedButton(
                  onPressed: () {
                    // setState(() {

                    // });
                    getTime();
                  },
                  child: _timeOfDay == null
                      ? const Text("Time Picker")
                      : Text(
                          "Time : ${_timeOfDay?.hour} :${_timeOfDay?.minute}")),
            ],
          ),
        ),
      ),
    );
  }
}
