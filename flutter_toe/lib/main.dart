import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyFirstApp(),
  );
}

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyFirstAppState();
  }
}

class _MyFirstAppState extends State<MyFirstApp> {
  bool _flag;
  bool _winFlag;
  var _progressValue;
  var _progressText;

  @override
  void initState() {
    _winFlag = false;
    _flag = true;
    _progressValue = ["", "", "", "", "", "", "", "", ""];
    _progressText = "Ходит 1й игрок";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo[50],
        appBar: AppBar(
          title: Text("Tic-Tac-Toe"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text('${(_progressText)}', style: TextStyle(fontSize: 25)),
                    ButtonBar(
                      buttonMinWidth: 100,
                      buttonHeight: 100,
                      children: <Widget>[
                        RaisedButton(
                          key: UniqueKey(),
                          child: Text('${(_progressValue[0])}', style: TextStyle(fontSize: 60)),
                          onPressed: () => _testButtons(0),
                        ),
                        RaisedButton(
                          key: UniqueKey(),
                          child: Text('${(_progressValue[1])}', style: TextStyle(fontSize: 60)),
                          onPressed: () => _testButtons(1),
                        ),
                        RaisedButton(
                          key: UniqueKey(),
                          child: Text('${(_progressValue[2])}', style: TextStyle(fontSize: 60)),
                          onPressed: () => _testButtons(2),
                        ),
                      ],
                    ),
                    ButtonBar(
                      buttonMinWidth: 100,
                      buttonHeight: 100,
                      children: <Widget>[
                        RaisedButton(
                          key: UniqueKey(),
                          child: Text('${(_progressValue[3])}', style: TextStyle(fontSize: 60)),
                          onPressed: () => _testButtons(3),
                        ),
                        RaisedButton(
                          key: UniqueKey(),
                          child: Text('${(_progressValue[4])}', style: TextStyle(fontSize: 60)),
                          onPressed: () => _testButtons(4),
                        ),
                        RaisedButton(
                          key: UniqueKey(),
                          child: Text('${(_progressValue[5])}', style: TextStyle(fontSize: 60)),
                          onPressed: () => _testButtons(5),
                        ),
                      ],
                    ),
                    ButtonBar(
                      buttonMinWidth: 100,
                      buttonHeight: 100,
                      children: <Widget>[
                        RaisedButton(
                          key: UniqueKey(),
                          child: Text('${(_progressValue[6])}', style: TextStyle(fontSize: 60)),
                          onPressed: () => _testButtons(6),
                        ),
                        RaisedButton(
                          key: UniqueKey(),
                          child: Text('${(_progressValue[7])}', style: TextStyle(fontSize: 60)),
                          onPressed: () => _testButtons(7),
                        ),
                        RaisedButton(
                          key: UniqueKey(),
                          child: Text('${(_progressValue[8])}', style: TextStyle(fontSize: 60)),
                          onPressed: () => _testButtons(8),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            setState(() {
              _winFlag = false;
              _flag = true;
              _progressValue = ["", "", "", "", "", "", "", "", ""];
              _progressText = "Ходит 1й игрок";
            });
          },
          label: Text('Переиграть'),
          icon: Icon(Icons.gamepad),
        ),
      ),
    );
  }

  _testButtons(int number) {
    setState(() {
      if (_progressValue[number] == '' && !_winFlag) {
        if (_flag) {
          _progressValue[number] = "X";
          _flag = !_flag;
          if (_checkWin() == false) {
            _progressText = "Ходит 2й игрок";
            return;
          } else {
            _progressText = _checkWin();
            return;
          }
        } else {
          _progressValue[number] = 'O';
          _flag = !_flag;
          if (_checkWin() == false) {
            _progressText = "Ходит 1й игрок";
            return;
          } else {
            _progressText = _checkWin();
            return;
          }
        }
      }
    });
  }

  _checkWin() {
    if ((_progressValue[0] == 'X' &&
            _progressValue[3] == 'X' &&
            _progressValue[6] == 'X') ||
        (_progressValue[1] == 'X' &&
            _progressValue[4] == 'X' &&
            _progressValue[7] == 'X') ||
        (_progressValue[2] == 'X' &&
            _progressValue[5] == 'X' &&
            _progressValue[8] == 'X') ||
        (_progressValue[0] == 'X' &&
            _progressValue[1] == 'X' &&
            _progressValue[2] == 'X') ||
        (_progressValue[3] == 'X' &&
            _progressValue[4] == 'X' &&
            _progressValue[5] == 'X') ||
        (_progressValue[6] == 'X' &&
            _progressValue[7] == 'X' &&
            _progressValue[8] == 'X') ||
        (_progressValue[2] == 'X' &&
            _progressValue[4] == 'X' &&
            _progressValue[6] == 'X') ||
        (_progressValue[0] == 'X' &&
            _progressValue[4] == 'X' &&
            _progressValue[8] == 'X')) {
      _winFlag = true;
      return "Победитель игрок номер 1";
    } else if ((_progressValue[0] == 'O' &&
            _progressValue[3] == 'O' &&
            _progressValue[6] == 'O') ||
        (_progressValue[1] == 'O' &&
            _progressValue[4] == 'O' &&
            _progressValue[7] == 'O') ||
        (_progressValue[2] == 'O' &&
            _progressValue[5] == 'O' &&
            _progressValue[8] == 'O') ||
        (_progressValue[0] == 'O' &&
            _progressValue[1] == 'O' &&
            _progressValue[2] == 'O') ||
        (_progressValue[3] == 'O' &&
            _progressValue[4] == 'O' &&
            _progressValue[5] == 'O') ||
        (_progressValue[6] == 'O' &&
            _progressValue[7] == 'O' &&
            _progressValue[8] == 'O') ||
        (_progressValue[2] == 'O' &&
            _progressValue[4] == 'O' &&
            _progressValue[6] == 'O') ||
        (_progressValue[0] == 'O' &&
            _progressValue[4] == 'O' &&
            _progressValue[8] == 'O')) {
      _winFlag = true;
      return "Победитель игрок номер 2";
    } else if (!_progressValue.contains('')) {
      return "Ничья";
    } else
      return false;
  }
}

//FloatingActionButton(onPressed: null)
