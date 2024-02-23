import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_c10_friday/task_item.dart';

class TasksTab extends StatelessWidget {
  const TasksTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 120,
          child: Stack(
            children: [
              Container(
                height: 70,
                color: Colors.blue,
              ),
              Positioned(
                bottom: 4,
                child: DatePicker(
                  DateTime.now(),
                  height: 90,
                  locale: "en",
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Colors.blue,
                  selectedTextColor: Colors.white,
                  onDateChange: (date) {},
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
              height: 8,
            ),
            itemBuilder: (context, index) {
              return TaskItem();
            },
            itemCount: 9,
          ),
        )
      ],
    );
  }
}
