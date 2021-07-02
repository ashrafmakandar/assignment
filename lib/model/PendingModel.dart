import 'package:flutter/material.dart';

class PendingModel {
  late IconData icon;
  late String taskDesc;
  late String Date;
  late String noOfDays;

  PendingModel(
      {required this.icon,
      required this.taskDesc,
      required this.Date,
      required this.noOfDays});
}
