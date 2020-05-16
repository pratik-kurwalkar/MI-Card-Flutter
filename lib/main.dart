import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: double.infinity,
              ),
              // Creates a circle that represents a user
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/profile_pic.png'),
              ),
              Text(
                'Pratik Kurwalkar',
                // modify text according to requirement
                style: TextStyle(
                  fontSize: 30,
                  // To use external fonts, Download from google fonts
                  // Create folder for storing font asset and store ttf font in it
                  // add asset to pubspec.yaml file using example indentation
                  color: Colors.lightBlue[100],
                  fontFamily: 'Marker',
                ),
              ),
              Text(
                'Developer',
                style: TextStyle(
                  fontFamily: 'SourceCode',
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlue[100],
                  letterSpacing: 5.0,
                ),
              ),
              SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    thickness: 1.5,
                    color: Colors.lightBlue.shade900,
                  )),
              // Card is a type of design, has slight ly rounded corners and a shadow
              // Used to represent some sort of related information
              Card(
                color: Colors.lightBlue[100],
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                // ListTile usually used with cards used to represent information with leading or trailing icons, widgets
                // Has padding and fixed height
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.blue.shade900,
                  ),
                  title: Text(
                    '+91 12345 67890',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'SourceCode',
                      color: Colors.blue.shade900,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.lightBlue[100],
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.blue.shade900,
                  ),
                  title: Text(
                    'pratik.kurwalkar@gmail.com',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'SourceCode',
                      color: Colors.blue.shade900,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
