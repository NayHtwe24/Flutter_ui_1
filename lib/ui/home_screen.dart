import 'package:flutter/material.dart';

import 'home.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: Container(
        height: 700,
        child: Card(
          margin: EdgeInsets.all(30.0),
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
            child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 100.0),
                  height: 80,
                  width: 300,
                  child: Center(
                    child: Icon(
                      Icons.insert_drive_file,
                      size: 50,
                      color: Colors.green,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.tealAccent,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Center(
                    child: Text("Sent sucessfully to Lela Crawford",
                        style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.grey
                    )),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Center(
                    child: Text("\$100.0",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.black
                        )),
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.network(
                      'https://img.freepik.com/free-vector/businessman-profile-cartoon_18591-58479.jpg?size=338&ext=jpg',
                        width: 50,
                        height: 50,
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("John Crawfood",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black
                          )),
                          Text("John123@gmail.com",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey
                          ))
                        ],
                      )
                    ],
                  )
                ),
                Container(
                  width: 300.0,
                  child: Divider(
                    color: Colors.teal[100],
                    thickness: 1.0,
                  ),
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    margin: EdgeInsets.only(left:20.0,right: 20.0),
                    child: Center(
                      child: Text("Transaction done on 12 January 2018, your reference number is 03492390",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.grey
                          )),
                    ),
                  ),
                ),
                Container(
                  width: 300.0,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyHome()));
                    },
                    color: Colors.red[300],
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        color: Colors.white,
                      fontSize: 12.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


