import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: ("Score App"),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Score App"),
          centerTitle: true,
        ),
        body: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Score1Button(), Foul1Button()],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Score1Button(), Foul1Button()],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

class Score1Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
            width: 230.0,
            height: 50.0,
            child: RaisedButton(
              onPressed: () {},
              color: Colors.lightBlue,
              elevation: 6.0,
              splashColor: Colors.blueGrey,
              shape: new RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: Text(
                "Goal",
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )
        )
    );
  }
}