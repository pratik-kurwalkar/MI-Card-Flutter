import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            // by default the row or column occupies the maximum space
            // verticalDirection: VerticalDirection.up,
            // Changes the order of the containers from bottom to up
            mainAxisAlignment: MainAxisAlignment.center,
            // Changes the alignment of children on the main axis options -> start, end, spaceEvenly, spaceBetween, spaceAround
            crossAxisAlignment: CrossAxisAlignment.center,
            // Changes the alignment of children in the opposite axis options ->  start, end, center, stretch(expands children to max length)
            children: <Widget>[
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.lime,
                child: Center(
                  child: Text('1'),
                ),
              ),
              // sized box used to insert invisible box for precise positioning. only need to specify row or column
              // as column, only specify height. Space inserted betn containers.
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.blue,
                child: Center(
                  child: Text('2'),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.pink,
                child: Center(
                  child: Text('3'),
                ),
              ),
              // Add container with max width and no height (invisible) to ease the positioning of children
              Container(
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
