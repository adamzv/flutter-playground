import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: _getCustomAppBar(),
        // appBar: AppBar(
        //   title: Text('AppBar Title'),
        //   actions: [IconButton(icon: Icon(Icons.ac_unit), onPressed: null)],
        // ),
        body: Column(
          children: <Widget>[
            Text('The question!'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }

  // Testing custom appBar with a nice fade effect
  _getCustomAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(50),
      child: Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Colors.teal, Colors.green],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // TODO: Find out how can I add a nice title here
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: null,
            ),
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
