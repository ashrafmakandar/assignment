import 'package:assignment/model/ServiceModel.dart';
import 'package:flutter/material.dart';

class Services extends StatefulWidget {
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  List<ServiceModel> _allServices = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _allServices = getservices();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.builder(
          itemCount: _allServices.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: _allServices[index].color,
                ),
                width: 220,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 5),
                      child: Image.asset(
                        _allServices[index].image,
                        height: 80,
                        width: 140,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        _allServices[index].servceText,
                        style: TextStyle(color: Colors.white,fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(_allServices[index].taskNo, style: TextStyle(color: Colors.white)),
                          Icon(
                            Icons.forward,
                            color: Colors.white,
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

  List<ServiceModel> getservices() {
    List<ServiceModel> all = [
      ServiceModel(
          image: "assets/images/mobile.jpg",
          servceText: "Mobile App\n Design",
          taskNo: "2 Task",
          color: Colors.deepOrange),
      ServiceModel(
          image: "assets/images/web.jpg",
          servceText: "Website\n Design",
          taskNo: "4 Task",
          color: Colors.deepPurple),
    ];
    return all;
  }
}
