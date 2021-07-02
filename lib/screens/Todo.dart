import 'package:assignment/model/TodoTask.dart';
import 'package:custom_horizontal_calendar/custom_horizontal_calendar.dart';
import 'package:custom_horizontal_calendar/date_row.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Todo extends StatefulWidget {
  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  late String selectedDate;
  DateTime chosen = DateTime.now();
  List<TodoTask> _task = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _task = gettasks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
          ),
          child: AppBar(
            backgroundColor: Colors.white,
            leading: Icon(
              Icons.arrow_back,
              color: Colors.grey,
            ),
            title: Text(
              "Todo",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    DateFormat.yMMMMd().format(chosen).toString(),
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  TextButton.icon(
                      onPressed: () {

                      },
                      icon: Icon(Icons.filter_alt_rounded),
                      label: Text("Today"))
                ],
              ),
            ),
            CustomHorizontalCalendar(
              onDateChoosen: (date) {
                setState(() {
                  chosen = date;
                });
              },
              inintialDate: DateTime.now(),
              height: 100,
              builder: (context, i, d, width) {
                if (i != 2)
                  return DateRow(
                    d,
                    width: width,
                  );
                else
                  return Container(
                    height: 100,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(50.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DateRow(
                        d,
                        selectedDayStyle:
                            TextStyle(color: Colors.white, fontSize: 15),
                        selectedDayOfWeekStyle:
                            TextStyle(color: Colors.white, fontSize: 15),
                        selectedMonthStyle:
                            TextStyle(color: Colors.transparent),
                        width: width,
                      ),
                    ),
                  );
              },
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: _task.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _task[index].time,
                            style: TextStyle(fontSize: 12),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, top: 20),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: _task[index].color,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(_task[index].taskDesc),
                                    Container(
                                      width: 300,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(_task[index].hours),
                                          Checkbox(
                                              checkColor: Colors.white,
                                              autofocus: false,
                                              shape: CircleBorder(),
                                              value: _task[index].checked,
                                              onChanged: (check) {})
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  List<TodoTask> gettasks() {
    List<TodoTask> task = [
      TodoTask(
          time: "12.00PM",
          taskDesc: "Landing Page Design",
          hours: "2 hours",
          checked: true,
          color: Colors.lightBlueAccent.shade200),
      TodoTask(
          time: "01.00PM",
          taskDesc: "Mobile App Prototype",
          hours: "",
          checked: false,
          color: Colors.yellowAccent.shade200),
      TodoTask(
          time: "02.00PM",
          taskDesc: "Lunch Time",
          hours: "",
          checked: false,
          color: Colors.pinkAccent.shade200),
      TodoTask(
          time: "06.00PM",
          taskDesc: "Design Training",
          hours: "",
          checked: false,
          color: Colors.greenAccent.shade200),
    ];
    return task;
  }
}
