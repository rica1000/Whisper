  import 'dart:convert';
import 'dart:ui';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'animations/anim1.dart';
import 'animations/anim2.dart';

//Rica : this component is used to display a model of question view
//in a user's turn

class Turn extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Turn> {
  List data;

  Future<String> loadJsonData() async {
    var jsonText = await rootBundle.loadString('assets/sports.json');
    print("here1" + jsonText);
    setState(() => data = json.decode(jsonText));
    return 'Success';
  }

  @override
  void initState() {
    super.initState();
    this.loadJsonData();
    print("here");
  }

  LinearGradient buttongrad = LinearGradient(
    colors: [
      Color(0xFFF58529),
      Color(0xFFFEDA77),
      Color(0xFFDD2A7B),
      Color(0xFF8134AF),
      Color(0xFF515BD4),
    ],
    stops: [
      0.0,
      0.05,
      0.4,
      0.75,
      1.0,
    ],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.black,
          title: ShaderMask(
            shaderCallback: (rect) {
              return LinearGradient(colors: [
                Color(0xFF5851DB),
                Color(0xffC13584),
              ]).createShader(rect);
            },
            child: Text(
              "Whisper",
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Rage',
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.black,
                size: 30,
              ),
              onPressed: null,
            ),
            IconButton(
              icon: Icon(
                Icons.help,
                color: Colors.black,
                size: 30,
              ),
              onPressed: null,
            ),
          ],
        ),
        body: Center(
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Text(
                        'Turn 1',
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      color: Colors.black,
                      height: 5,
                      width: 200,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.green,
                          ),
                          Container(
                            margin: EdgeInsets.all(20),
                            child: Text(
                              'User',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    data[1]["question"],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () => {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => select1()),
                        )
                        },
                        child: Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                            gradient: buttongrad,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            'DARE',
                            style: TextStyle(color: Colors.white),
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                      InkWell(
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => select2()),
                          )
                        },
                        child: Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                            gradient: buttongrad,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            'TRUTH',
                            style: TextStyle(color: Colors.white),
                          ),
                          alignment: Alignment.center,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
