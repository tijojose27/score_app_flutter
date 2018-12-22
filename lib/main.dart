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
            Expanded(child: ScoreApp(score1, 'Team 1')),
            Expanded(
              child: ScoreApp(score2, "Team 2"),
            ),
          ],
        ),
      ),
    ),
  ));
}

class ScoreApp extends StatefulWidget {
  String teamtextView;
  int score;

  ScoreApp(this.score, this.teamtextView);

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
        TeamTextView(widget.teamtextView),
        Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Text("${widget.score}",
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
                      widget.score++;
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
                      if (widget.score - 1 >= 0) {
                        widget.score--;
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

class TeamTextView extends StatelessWidget {
  String teamName;

  TeamTextView(this.teamName);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 20.0),
        child: Text(
          teamName,
          style: TextStyle(
              fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white),
        ));
  }
}
