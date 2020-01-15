import 'package:first_ui/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:first_ui/ui/home_screen.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {},
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(130.0),
          child: Container(
            width: double.infinity,
            height: 130.0,
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Your Wallet",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "\$1,750.00",
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                    ),
                    Container(
                      width: 90.0,
                      height: 50.0,
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.keyboard_arrow_up,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                          ),
                          Text(
                            "15%",
                            style: TextStyle(
                                color: Colors.white
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3,
              child: Container(
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      right: 0,
                      left: 0,
                      bottom: 150,
                      child: Container(
                        alignment: Alignment.topCenter,
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        color: Colors.teal,
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 60,
                      child: Container(
                        margin: EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5.0),
                        padding: EdgeInsets.only(top: 20.0),
                        width: double.infinity,
                        height: 200,
                        child: Card(
                          elevation: 3,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  children: <Widget>[
                                    CircularPercentIndicator(
                                      radius: 60.0,
                                      lineWidth: 2.0,
                                      percent: 0.8,
                                      center: Text("80%",
                                        style:
                                        TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0,
                                        ),
                                      ),
                                      progressColor: Colors.teal,
                                      backgroundColor: Colors.blue,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text("Good Financial",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15
                                              )
                                          ),
                                          Text(
                                              "Your Financial condition is good",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13,
                                                  color: Colors.grey
                                              )),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(13.0),
                                child: Divider(
                                  color: Colors.teal[100],
                                  thickness: 2.0,
                                ),
                              ),
                              Container(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                                  },
                                  child: Text("View Statiscits >",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.grey
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0),
                    child: Text("Detail Information",
                      style:
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5.0),
                    padding: EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: <Widget>[
                      Expanded(
                        child: Container(
                          width: 150,
                          height: 180,
                          child: Card(
                            elevation: 3,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                    Expanded(
                      child: Container(
                        width: 150,
                        height: 180,
                        child: Card(
                          elevation: 3,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5.0),
                    padding: EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            width: 150,
                            height: 180,
                            child: Card(
                              elevation: 3,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 150,
                            height: 180,
                            child: Card(
                              elevation: 3,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
