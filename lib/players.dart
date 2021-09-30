import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';
import 'step.dart';

class select extends StatefulWidget {
  select({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<select> {
  @override
  bool checkBoxValue= false;
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

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[Text(
                'Veuillez ajouter les pseudos des participants',
                style: TextStyle(
                  fontFamily: 'Rage',
                  fontSize: 45.0,

                ),
            textAlign: TextAlign.center,

              overflow: TextOverflow.ellipsis,
              ),
            SizedBox(height: 30.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
         Expanded(child: TextFormField(
            decoration: InputDecoration(
                labelText: 'Participant 1',
                border: OutlineInputBorder()
            ),
          ),),

Flexible(child:
               CheckboxListTile(
                    title: Text("Homme "),
                controlAffinity: ListTileControlAffinity.leading,
                  value: checkBoxValue,
                  onChanged: (bool value){
                       setState(() {
                        checkBoxValue=value;
                      });
                  },
                                ),
),
         Flexible(child:
         CheckboxListTile(
           title: Text("Femme "),
           controlAffinity: ListTileControlAffinity.leading,
           value: checkBoxValue,
           onChanged: (bool value){
             setState(() {
               checkBoxValue=value;
                         });
                   },
                ),
              )
                ,],
          ),




                SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Participant 2',
                        border: OutlineInputBorder()
                    ),
                  ),),

                  Flexible(child:
                  CheckboxListTile(
                    title: Text("Homme "),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: checkBoxValue,
                    onChanged: (bool value){
                      setState(() {
                        checkBoxValue=value;
                      });
                    },
                  ),
                  ),
                  Flexible(child:
                  CheckboxListTile(
                    title: Text("Femme "),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: checkBoxValue,
                    onChanged: (bool value){
                      setState(() {
                        checkBoxValue=value;
                      });
                    },
                  ),
                  )
                  ,],
              ),

                SizedBox(height: 10.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Participant 3',
                        border: OutlineInputBorder()
                    ),
                  ),),

                  Flexible(child:
                  CheckboxListTile(
                    title: Text("Homme "),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: checkBoxValue,
                    onChanged: (bool value){
                      setState(() {
                        checkBoxValue=value;
                      });
                    },
                  ),
                  ),
                  Flexible(child:
                  CheckboxListTile(
                    title: Text("Femme "),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: checkBoxValue,
                    onChanged: (bool value){
                      setState(() {
                        checkBoxValue=value;
                      });
                    },
                  ),
                  )
                  ,],
              ),

                SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Participant 4',
                        border: OutlineInputBorder()
                    ),
                  ),),

                  Flexible(child:
                  CheckboxListTile(
                    title: Text("Homme "),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: checkBoxValue,
                    onChanged: (bool value){
                      setState(() {
                        checkBoxValue=value;
                      });
                    },
                  ),
                  ),
                  Flexible(child:
                  CheckboxListTile(
                    title: Text("Femme "),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: checkBoxValue,
                    onChanged: (bool value){
                      setState(() {
                        checkBoxValue=value;
                      });
                    },
                  ),
                  )
                  ,],
              ),

                SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Participant 5',
                        border: OutlineInputBorder()
                    ),
                  ),),

                  Flexible(child:
                  CheckboxListTile(
                    title: Text("Homme "),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: checkBoxValue,
                    onChanged: (bool value){
                      setState(() {
                        checkBoxValue=value;
                      });
                    },
                  ),
                  ),
                  Flexible(child:
                  CheckboxListTile(
                    title: Text("Femme "),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: checkBoxValue,
                    onChanged: (bool value){
                      setState(() {
                        checkBoxValue=value;
                      });
                    },
                  ),
                  )
                  ,],
              ),

                SizedBox(height: 120.0),
                ScaleTap(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Turn()),
                    );
                  },
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
                      child: Text('JOUER',
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


    );
  }
}
