import 'package:flutter/cupertino.dart';

class TodoTask {
  late String time;
  late String taskDesc;
  late String hours;
  late bool checked;
  late Color color;

  TodoTask(
      {required this.time,
      required this.taskDesc,
      required this.hours,
      required this.checked,
      required this.color});
}
