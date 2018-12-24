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
        child: ScoreApp()
      ),
    ),
  ));
}

////////////////////////////////////////////////////////////////////////////////
//WIDGETS START HERE
////////////////////////////////////////////////////////////////////////////////

class ScoreApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _ScoreApp();
  }
}

class _ScoreApp extends State<ScoreApp> {


  Widget buildScoreView(int team) {
    return Text("${getScore(team)}",
        style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.white));
  }

  Widget buildScoreBtn(int team){
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
            width: 230.0,
            height: 50.0,
            child: RaisedButton(
              onPressed: () {
                setState(() {
                  increment(getScore(team), team);
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
            )));
  }

  Widget buildFoulBtn(int team){
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
            width: 230.0,
            height: 50.0,
            child: RaisedButton(
              onPressed: () {
                setState(() {
                  decrement(getScore(team), team);
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
            )));
  }

  Widget buildResetBtn(){
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
            width: 230.0,
            height: 50.0,
            child: RaisedButton(
              onPressed: () {
                setState(() {
                  score1=0;
                  score2=0;
                });
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

  Widget buildTeamName(String teamName){
    return Padding(
        padding: EdgeInsets.only(bottom: 20.0),
        child: Text(
          teamName,
          style: TextStyle(
              fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white),
        ));
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(children: <Widget>[
          Expanded(child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              buildTeamName("Team 1"),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                  child: buildScoreView(1)
              ),
              buildScoreBtn(1),
              buildFoulBtn(1)
            ],
          )),
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              buildTeamName("Team 2"),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: buildScoreView(2),
              ),
              buildScoreBtn(2),
              buildFoulBtn(2)
            ],
          ),)
        ]),
        buildResetBtn()
      ],
    );
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