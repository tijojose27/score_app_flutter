import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: ("Basic App"),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Basic App with Text and button"),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CustomTextView(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: CustomButton(),
                )
              ],
            ),
          )),
    ),
  );
}

class CustomTextView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
          hintText: "Please enter search here"),
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      color: Colors.lightBlue,
      elevation: 6.0,
      splashColor: Colors.blueGrey,
      shape: new RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0)
      ),
      child: Text("Click To Clear Text !!", style: TextStyle(
        fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white
      ),),
    );
  }
}
