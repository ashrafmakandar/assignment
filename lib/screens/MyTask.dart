import 'package:assignment/customwidgets/Pending.dart';
import 'package:assignment/customwidgets/Services.dart';
import 'package:flutter/material.dart';
class MyTask extends StatefulWidget {
  @override
  _MyTaskState createState() => _MyTaskState();
}

class _MyTaskState extends State<MyTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),

        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,),
          child: AppBar(
            backgroundColor: Colors.white,
            leading: Icon(
              Icons.arrow_back,
              color: Colors.grey,

            ),
            title: Text("Home",style: TextStyle(color: Colors.black),),
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 5.0),
                child: Icon(Icons.search,color: Colors.grey,),
              )
            ],
          ),
        ),
      ),
      body:  ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("My Task",style: TextStyle(fontSize: 20),),

          ),
          Services(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Pending",style: TextStyle(fontSize: 20),),

          ),
          Pending()

        ],

      ),
    );
  }
}
