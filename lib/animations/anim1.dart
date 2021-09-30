import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';

class select1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: RichText(
          text: TextSpan(
              style: TextStyle(
                fontFamily: 'Rage',
                fontSize: 45.0,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Whi', style: TextStyle(color: Color(0xFF5851DB)),
                ),
                TextSpan(
                  text: 'sper', style: TextStyle(color: Color(0xFFC13584)),
                ),
              ]
          ),
        ),
      ),




      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 50.0,horizontal: 30.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[Text(
                'Veuillez prendre un verre',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
                SizedBox(height: 10.0),
//besoin de titre et de decorer l image

                SizedBox(height: 10.0),

                Image.asset('assets/anim1.gif'),

                SizedBox(height: 10.0),
                ScaleTap(
                  onTap: () {},
                  child: new Container(
                    height: 105.0,
                    width: 350.0,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          stops: [
                            0.01,
                            0.2,
                            0.5,
                            0.9,
                          ],
                          colors: [
                            Color(0xFFFEDA77),
                            Color(0xFFDD2A7B),
                            Color(0xFF8134AF),
                            Color(0xFF515BD4)
                          ],
                        ),
                        borderRadius: BorderRadius.circular(45.0)
                    ),
                    child: Center(
                      child: Text('Terminez',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Myriad Arabic',
                          //fontWeight: FontWeight.bold,
                          fontSize: 76.0,
                        ),
                      ),
                    ),
                  ),
                )

              ],
            ),
          ),
        ),
      ),


    );
  }
}


/*mport 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 10;
  Timer _timer;

  void _startTimer() {
    _counter = 10;
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Timer App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            (_counter > 0)
                ? Text("")
                : Text(
                    "DONE!",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 48,
                    ),
                  ),
            Text(
              '$_counter',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 48,
              ),
            ),
            RaisedButton(
              onPressed: () => _startTimer(),
              child: Text("Start 10 second count down"),
            ),
          ],
        ),
      ),
    );
  }
}*/
