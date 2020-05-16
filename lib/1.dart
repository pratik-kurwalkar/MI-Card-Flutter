import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// for hot reload to function properly, you need stateless of statefull widget
// stateless widget is used for concrete UI, which does not change dynamically
// when hot reloaded, build method called each time so, changes instantly reflected
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        // SafeArea widget used to add sufficient padding to avoid intusion of OS elements(notification bar)
        // Also useful in case of notch. Does not intrefere in notch area.
        body: SafeArea(
          // Container is a single child widget. Used for convienience.
          // Used while positioning and styling of widgets. Used like div in html
          // Containers with no child try to be as big as possible. If they contain a child, they by deault have the same size as the child
          child: Container(
            height: 100.0,
            width: 100.0,
            // margin: EdgeInsets.all(20.0),
            // margin: EdgeInsets.fromLTRB(10.0, 20.0, 20.0, 10.0),
            // margin: EdgeInsets.only(left: 50.0),
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
            color: Colors.lime,
            child: Text('Hello!'),
          ),
        ),
      ),
    );
  }
}
