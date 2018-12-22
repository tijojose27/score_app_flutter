import 'package:flutter/material.dart';

int score1 = 0;
int score2 = 0;
void main() {
  runApp(MaterialApp(
    title: ("Score App"),
    home: Scaffold(
      appBar: AppBar(
        title: Text("Score App"),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.jpg"), fit: BoxFit.cover)),
        child: Row(
          children: <Widget>[
            Expanded(child: ScoreApp()),
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
  ));
}

class ScoreApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ScoreApp();
  }
}

class _ScoreApp extends State<ScoreApp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Team1TextView(),
        Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Text("${score1}",
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white))),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
                width: 230.0,
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      score1++;
                    });
                  },
                  color: Colors.lightBlue,
                  elevation: 6.0,
                  splashColor: Colors.blueGrey,
                  shape: new RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Text(
                    "Score",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ))),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
                width: 230.0,
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      if (score1 - 1 >= 0) {
                        score1--;
                      }
                    });
                  },
                  color: Colors.red,
                  elevation: 6.0,
                  splashColor: Colors.blueGrey,
                  shape: new RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Text(
                    "Foul",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )))
      ],
    );
  }
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
              onPressed: () {
                score1--;
              },
              color: Colors.lightBlue,
              elevation: 6.0,
              splashColor: Colors.blueGrey,
              shape: new RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: Text(
                "Score",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )));
  }
}

class Foul1Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
            width: 230.0,
            height: 50.0,
            child: RaisedButton(
              onPressed: () {},
              color: Colors.red,
              elevation: 6.0,
              splashColor: Colors.blueGrey,
              shape: new RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: Text(
                "Foul",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )));
  }
}

class ScoreTextView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 10.0),
        child: Text(
          "0",
          style: TextStyle(
              fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white),
        ));
  }
}

class Team1TextView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 20.0),
        child: Text(
          "Team 1",
          style: TextStyle(
              fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white),
        ));
  }
}
