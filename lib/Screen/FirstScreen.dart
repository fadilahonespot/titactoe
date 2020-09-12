import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:titactoe/model/player.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var player1 = TextEditingController();
    var player2 = TextEditingController();
    final _formKey = GlobalKey<FormState>();

    login() {
      if (_formKey.currentState.validate()) {
        var play = Player(player1.text, player2.text);
        Navigator.pushNamed(context, "/main", arguments: play);
      }
    }

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: [
                          Text("Tic Tac Toe", style: TextStyle(fontSize: 30, color: Colors.blue, fontWeight: FontWeight.bold),),
                          SizedBox(
                            height: 12.0,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset("images/tictactoe.png")
                          ),
                        ],
                      )
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Input Player",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Field are required";
                      }
                      return null;
                    },
                    controller: player1,
                    decoration: InputDecoration(
                        labelText: "Player 1"
                    ),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Field are required";
                      }
                      return null;
                    },
                    controller: player2,
                    decoration: InputDecoration(
                        labelText: "Player 2"
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: RaisedButton(
                        onPressed: login,
                        color: Colors.lightBlueAccent,
                        child: Text("Play", style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
