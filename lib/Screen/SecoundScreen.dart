import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:titactoe/model/player.dart';

class SecoundScreen extends StatefulWidget {
  var Player;

  SecoundScreen({this.Player});

  @override
  SecoundScreenState createState() => SecoundScreenState(Player);
}

class SecoundScreenState extends State<SecoundScreen> {
  Player play;

  SecoundScreenState(this.play);

  var row1 = "";
  var row2 = "";
  var row3 = "";
  var row4 = "";
  var row5 = "";
  var row6 = "";
  var row7 = "";
  var row8 = "";
  var row9 = "";

  var colRow1 = Colors.blue;
  var colRow2 = Colors.blue;
  var colRow3 = Colors.blue;
  var colRow4 = Colors.blue;
  var colRow5 = Colors.blue;
  var colRow6 = Colors.blue;
  var colRow7 = Colors.blue;
  var colRow8 = Colors.blue;
  var colRow9 = Colors.blue;

  var winner = "";
  var player = "";
  var counter = 0;

  showPlayer() {
    setState(() {
      if (counter == 0) {
        player = "PLAYER 1 : ${this.play.player1}";
      } else {
        player = "PLAYER 2:  ${this.play.player2}";
      }
    });
  }

  void touchMe1() {
    if (row1 == "" && winner == "") {
      this.counter = (this.counter + 1) % 2;
      setState(() {
        if (counter == 0) {
          row1 = "x";
        } else {
          row1 = "o";
        }
      });
    }
  }

  void touchMe2() {
    if (row2 == "" && winner == "") {
      this.counter = (this.counter + 1) % 2;
      setState(() {
        if (counter == 0) {
          row2 = "x";
        } else {
          row2 = "o";
        }
      });
    }
  }

  void touchMe3() {
    if (row3 == "" && winner == "") {
      this.counter = (this.counter + 1) % 2;
      setState(() {
        if (counter == 0) {
          row3 = "x";
        } else {
          row3 = "o";
        }
      });
    }
  }

  void touchMe4() {
    if (row4 == "" && winner == "") {
      this.counter = (this.counter + 1) % 2;
      setState(() {
        if (counter == 0) {
          row4 = "x";
        } else {
          row4 = "o";
        }
      });
    }
  }

  void touchMe5() {
    if (row5 == "" && winner == "") {
      this.counter = (this.counter + 1) % 2;
      setState(() {
        if (counter == 0) {
          row5 = "x";
        } else {
          row5 = "o";
        }
      });
    }
  }

  void touchMe6() {
    if (row6 == "" && winner == "") {
      this.counter = (this.counter + 1) % 2;
      setState(() {
        if (counter == 0) {
          row6 = "x";
        } else {
          row6 = "o";
        }
      });
    }
  }

  void touchMe7() {
    if (row7 == "" && winner == "") {
      this.counter = (this.counter + 1) % 2;
      setState(() {
        if (counter == 0) {
          row7 = "x";
        } else {
          row7 = "o";
        }
      });
    }
  }

  void touchMe8() {
    if (row8 == "" && winner == "") {
      this.counter = (this.counter + 1) % 2;
      setState(() {
        if (counter == 0) {
          row8 = "x";
        } else {
          row8 = "o";
        }
      });
    }
  }

  void touchMe9() {
    if (row9 == "" && winner == "") {
      this.counter = (this.counter + 1) % 2;
      setState(() {
        if (counter == 0) {
          row9 = "x";
        } else {
          row9 = "o";
        }
      });
    }
  }

  void setColorRow1() {
    colRow1 = Colors.green;
    colRow2 = Colors.green;
    colRow3 = Colors.green;
  }

  void setColorRow2() {
    colRow4 = Colors.green;
    colRow5 = Colors.green;
    colRow6 = Colors.green;
  }

  void setColorRow3() {
    colRow7 = Colors.green;
    colRow8 = Colors.green;
    colRow9 = Colors.green;
  }

  void setColorRow4() {
    colRow1 = Colors.green;
    colRow4 = Colors.green;
    colRow7 = Colors.green;
  }

  void setColorRow5() {
    colRow2 = Colors.green;
    colRow5 = Colors.green;
    colRow8 = Colors.green;
  }

  void setColorRow6() {
    colRow3 = Colors.green;
    colRow6 = Colors.green;
    colRow9 = Colors.green;
  }

  void setColorRow7() {
    colRow1 = Colors.green;
    colRow5 = Colors.green;
    colRow9 = Colors.green;
  }

  void setColorRow8() {
    colRow3 = Colors.green;
    colRow5 = Colors.green;
    colRow7 = Colors.green;
  }

  checkWinner() {
    setState(() {
      // Player 1
      if (row1 == "o" && row2 == "o" && row3 == "o") {
        setColorRow1();
        winner = "Winner PLAYER 1: ${play.player1}";
      }
      if (row4 == "o" && row5 == "o" && row6 == "o") {
        setColorRow2();
        winner = "Winner PLAYER 1: ${play.player1}";
      }
      if (row7 == "o" && row8 == "o" && row9 == "o") {
        setColorRow3();
        winner = "Winner PLAYER 1: ${play.player1}";
      }

      if (row1 == "o" && row4 == "o" && row7 == "o") {
        setColorRow4();
        winner = "Winner PLAYER 1: ${play.player1}";
      }
      if (row2 == "o" && row5 == "o" && row8 == "o") {
        setColorRow5();
        winner = "Winner PLAYER 1: ${play.player1}";
      }
      if (row3 == "o" && row6 == "o" && row9 == "o") {
        setColorRow6();
        winner = "Winner PLAYER 1: ${play.player1}";
      }

      if (row1 == "o" && row5 == "o" && row9 == "o") {
        setColorRow7();
        winner = "Winner PLAYER 1: ${play.player1}";
      }
      if (row3 == "o" && row5 == "o" && row7 == "o") {
        setColorRow8();
        winner = "Winner PLAYER 1: ${play.player1}";
      }

      // Player 2
      if (row1 == "x" && row2 == "x" && row3 == "x") {
        setColorRow1();
        winner = "Winner PLAYER 2: ${play.player2}";
      }
      if (row4 == "x" && row5 == "x" && row6 == "x") {
        setColorRow2();
        winner = "Winner PLAYER 2: ${play.player2}";
      }
      if (row7 == "x" && row8 == "x" && row9 == "x") {
        setColorRow3();
        winner = "Winner PLAYER 2: ${play.player2}";
      }

      if (row1 == "x" && row4 == "x" && row7 == "x") {
        setColorRow4();
        winner = "Winner PLAYER 2: ${play.player2}";
      }
      if (row2 == "x" && row5 == "x" && row8 == "x") {
        setColorRow5();
        winner = "Winner PLAYER 2: ${play.player2}";
      }
      if (row3 == "x" && row6 == "x" && row9 == "x") {
        setColorRow6();
        winner = "Winner PLAYER 2: ${play.player2}";
      }

      if (row1 == "x" && row5 == "x" && row9 == "x") {
        setColorRow7();
        winner = "Winner PLAYER 2: ${play.player2}";
      }
      if (row3 == "x" && row5 == "x" && row7 == "x") {
        setColorRow8();
        winner = "Winner PLAYER 2: ${play.player2}";
      }

      // Draw
      if (row1 != "" &&
          row2 != "" &&
          row3 != "" &&
          row4 != "" &&
          row5 != "" &&
          row6 != "" &&
          row7 != "" &&
          row8 != "" &&
          row9 != "" &&
          winner == "") {
        winner = "Draw";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    showPlayer();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Tit Tac Toe"),
        ),
        body: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  player,
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(3.0),
                      child: SizedBox(
                        height: 86,
                        child: RaisedButton(
                          color: colRow1,
                          onPressed: () {
                            touchMe1();
                            checkWinner();
                            showPlayer();
                          },
                          child: Text(
                            row1,
                            style: TextStyle(
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(3.00),
                      child: SizedBox(
                        height: 86,
                        child: RaisedButton(
                          color: colRow2,
                          onPressed: () {
                            touchMe2();
                            checkWinner();
                            showPlayer();
                          },
                          child: Text(
                            row2,
                            style: TextStyle(
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(3.0),
                      child: SizedBox(
                        height: 86,
                        child: RaisedButton(
                          color: colRow3,
                          onPressed: () {
                            touchMe3();
                            checkWinner();
                            showPlayer();
                          },
                          child: Text(
                            row3,
                            style: TextStyle(
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(3),
                      child: SizedBox(
                        height: 86,
                        child: RaisedButton(
                          color: colRow4,
                          onPressed: () {
                            touchMe4();
                            checkWinner();
                            showPlayer();
                          },
                          child: Text(
                            row4,
                            style: TextStyle(
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(3),
                      child: SizedBox(
                        height: 86,
                        child: RaisedButton(
                          color: colRow5,
                          onPressed: () {
                            touchMe5();
                            checkWinner();
                            showPlayer();
                          },
                          child: Text(
                            row5,
                            style: TextStyle(
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(3),
                      child: SizedBox(
                        height: 86,
                        child: RaisedButton(
                          color: colRow6,
                          onPressed: () {
                            touchMe6();
                            checkWinner();
                            showPlayer();
                          },
                          child: Text(
                            row6,
                            style: TextStyle(
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(3),
                      child: SizedBox(
                        height: 86,
                        child: RaisedButton(
                          color: colRow7,
                          onPressed: () {
                            touchMe7();
                            checkWinner();
                            showPlayer();
                          },
                          child: Text(
                            row7,
                            style: TextStyle(
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(3),
                      child: SizedBox(
                        height: 86,
                        child: RaisedButton(
                          color: colRow8,
                          onPressed: () {
                            touchMe8();
                            checkWinner();
                            showPlayer();
                          },
                          child: Text(
                            row8,
                            style: TextStyle(
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(3),
                      child: SizedBox(
                        height: 86,
                        child: RaisedButton(
                          color: colRow9,
                          onPressed: () {
                            touchMe9();
                            checkWinner();
                            showPlayer();
                          },
                          child: Text(
                            row9,
                            style: TextStyle(
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Text(
                      winner,
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: IconButton(
                        icon: Icon(
                          Icons.loop,
                          size: 56,
                        ),
                        onPressed: () {
                          setState(() {
                            row1 = "";
                            row2 = "";
                            row3 = "";
                            row4 = "";
                            row5 = "";
                            row6 = "";
                            row7 = "";
                            row8 = "";
                            row9 = "";

                            winner = "";

                            colRow1 = Colors.blue;
                            colRow2 = Colors.blue;
                            colRow3 = Colors.blue;
                            colRow4 = Colors.blue;
                            colRow5 = Colors.blue;
                            colRow6 = Colors.blue;
                            colRow7 = Colors.blue;
                            colRow8 = Colors.blue;
                            colRow9 = Colors.blue;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
