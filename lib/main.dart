import 'package:flutter/material.dart';

int score1 = 0;
int score2 = 0;

var team1Widget = ScoreApp( "Team 1", 1);
var team2Widget = ScoreApp("Team 2", 2);

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(children: <Widget>[
              Expanded(child: team1Widget),
              Expanded(child: team2Widget),
            ]),
            ResetBtn()
          ],
        ),
      ),
    ),
  ));
}

////////////////////////////////////////////////////////////////////////////////
//WIDGETS START HERE
////////////////////////////////////////////////////////////////////////////////

class ScoreApp extends StatefulWidget {
  String teamtextView;
  int team;

  ScoreApp(this.teamtextView, this.team);

  static _ScoreApp of(BuildContext context) =>
      context.ancestorStateOfType(const TypeMatcher<_ScoreApp>());

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
            child: ScoreTextView(widget.team)
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
                width: 230.0,
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      increment(getScore(widget.team), widget.team);
                    });
                  },
                  color: Colors.green,
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
                     decrement(getScore(widget.team), widget.team);
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
                ))),
      ],
    );
  }
}

class ScoreTextView extends StatelessWidget{

  int team;

  ScoreTextView(this.team);

  @override
  Widget build(BuildContext context) {
    return Text("${getScore(team)}",
        style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.white));
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

class ResetBtn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
            width: 230.0,
            height: 50.0,
            child: RaisedButton(
              onPressed: () {
                score1 = 0;
                score2 = 0;
              },
              color: Colors.blue,
              elevation: 6.0,
              splashColor: Colors.blueGrey,
              shape: new RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: Text(
                "Reset",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )));
  }
}

////////////////////////////////////////////////////////////////////////////////
//WIDGETS END HERE
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
//METHODS START HERE
////////////////////////////////////////////////////////////////////////////////

int increment(score, team) {
  score++;
  if (team == 1) {
    score1++;
    return score1;
  }
  score2++;
  return score2;
}

int decrement(score, team){
  if(score>0){
    score--;
  }
  if(team==1){
    score1=score;
    return score1;
  }
  score2 = score;
  return score;
}

int getScore(team){
  if(team==1){
    return score1;
  }
  return score2;
}

////////////////////////////////////////////////////////////////////////////////
//METHODS END HERE
////////////////////////////////////////////////////////////////////////////////