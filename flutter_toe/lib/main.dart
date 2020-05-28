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
  bool _loading;
  double _progressValue;

  @override
  void initState() {
    _loading = false;
    _progressValue = 0.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text("Tic-Tac-Toe"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    ButtonBar(
                      children: <Widget>[
                        RaisedButton(
                          child: Text('1'),
                          onPressed: null,
                        ),
                        RaisedButton(
                          child: Text('2'),
                          onPressed: null,
                        ),
                        RaisedButton(
                          child: Text('3'),
                          onPressed: null,
                        ),
                      ],
                    ),
                    ButtonBar(
                      children: <Widget>[
                        RaisedButton(
                          child: Text('4'),
                          onPressed: null,
                        ),
                        RaisedButton(
                          child: Text('5'),
                          onPressed: null,
                        ),
                        RaisedButton(
                          child: Text('6'),
                          onPressed: null,
                        ),
                      ],
                    ),
                    ButtonBar(
                      children: <Widget>[
                        RaisedButton(
                          child: Text('7'),
                          onPressed: null,
                        ),
                        RaisedButton(
                          child: Text('8'),
                          onPressed: null,
                        ),
                        RaisedButton(
                          child: Text('9'),
                          onPressed: null,
                        ),
                      ],
                    ),
                  ],
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }

  //   ButtonBar(
  //     children: <Widget>[
  //       RaisedButton(child: Text('1'),onPressed: null,),
  //       RaisedButton(child: Text('2'),onPressed: null,),
  //       RaisedButton(child: Text('3'),onPressed: null,),
  //     ],
  //   ),

//   void _updateProgress() {
//     const oneSec = const Duration(seconds: 1);
//     Timer.periodic(oneSec, (Timer t){
//       setState(() {
//         _progressValue += 0.2;
//         if(_progressValue.toStringAsFixed(1) == '1.0') {
//           _loading = false;
//           t.cancel();
//           _progressValue = 0.0;
//           return;
//         }
//       });
//     });
//   }
}
