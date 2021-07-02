import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Summary extends StatefulWidget {
  @override
  _SummaryState createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
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
              "Summary",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    DateFormat.yMMMMd().format(DateTime.now()).toString(),
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.filter_alt_rounded),
                      label: Text("Today"))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 250,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.orangeAccent.withOpacity(0.3),borderRadius: BorderRadius.circular(5.0)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20,top: 10,bottom: 30),
                      child: Text(
                        "Today's Result",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircularPercentIndicator(
                        radius: 120.0,
                        lineWidth: 10.0,
                        percent: 0.75,
                        center: new Text(
                          "75%",
                          style:
                              TextStyle(color: Colors.deepOrangeAccent, fontSize: 18),
                        ),
                        progressColor: Colors.deepOrangeAccent,
                        circularStrokeCap: CircularStrokeCap.round,
                        arcType: ArcType.FULL,
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
