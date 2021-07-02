import 'package:assignment/model/PendingModel.dart';
import 'package:flutter/material.dart';

class Pending extends StatefulWidget {
  @override
  _PendingState createState() => _PendingState();
}

class _PendingState extends State<Pending> {
  List<PendingModel> _pendigtask = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pendigtask = getpendingtask();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,

      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: _pendigtask.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.white,elevation: 2,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 40),
                      child: Icon(
                        _pendigtask[index].icon,
                        color: Colors.deepPurpleAccent,
                        size: 25,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20,bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _pendigtask[index].taskDesc,
                            style: TextStyle(fontSize: 15),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(Icons.access_time),
                                  label: Text(
                                    _pendigtask[index].Date,
                                    style: TextStyle(color: Colors.blueGrey),
                                  )),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.lightBlueAccent,
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(_pendigtask[index].noOfDays,style: TextStyle(color: Colors.white70),),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }

  List<PendingModel> getpendingtask() {
    List<PendingModel> model = [
      PendingModel(
          icon: Icons.edit,
          taskDesc: "Product Design Task\n Online Class App",
          Date: "12.00PM-1.00PM",
          noOfDays: "3 days remaining"),
      PendingModel(
          icon: Icons.all_inbox_sharp,
          taskDesc: "Pakaging and Branding\n Full Design",
          Date: "2.00PM-4.00PM",
          noOfDays: "4 days remaining"),
    ];
    return model;
  }
}
