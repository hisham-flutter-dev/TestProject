import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var dropdownValue = 'Select State';

  @override
  Widget build(BuildContext context) {
    Future fetchCovid() async {
      final power =
          await http.get('https://api.rootnet.in/covid19-in/stats/history');

      if (power.statusCode == 200) {
        final responseJson = json.decode(power.body);
        debugPrint(responseJson.toString(), wrapWidth: 1024);
      } else {
        throw Exception('Failed to load data');
      }
    }

    fetchCovid();
    return Scaffold(
      backgroundColor: Color(0xFF473F97),
      // extendBody: true,
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarOpacity: 0.0,
        leading: Icon(Icons.menu, color: Colors.white),
        backgroundColor: Color(0xFF473F97),
        shadowColor: Color(0xFF473F97),
        elevation: 0.0,
        bottomOpacity: 0.0,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 100),
            Text(
              'Statitics',
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.white),
            ),
            Theme(
                data: Theme.of(context).copyWith(
                  canvasColor: Colors.blue.shade200,
                ),
                child: DropdownButton<String>(
                  value: dropdownValue,
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.black),
                  underline: Container(
                    height: 2,
                    color: Colors.transparent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },
                  dropdownColor: Colors.white,
                  iconEnabledColor: Colors.white,
                  items: <String>['Select State', 'Kerala', 'TN', 'KN', 'AN']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )),
            SizedBox(height: 23),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(width: 13),
                Expanded(
                    child: Container(
                  //Set background for container.
                  color: Color(0xFFFFB259),
                  child: Container(
                      height: 111,
                      width: 50,
                      color: Color(0xFFFFB259),
                      child: Center(
                          child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'Confirm \n\n',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                                text: '125893',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 23)),
                          ],
                        ),
                      ))),
                )),
                SizedBox(width: 13),
                Expanded(
                    child: Container(
                  //Set background for container.
                  color: Color(0xFFFFB259),
                  child: Container(
                      height: 111,
                      width: 50,
                      color: Color(0xFFFF5959),
                      child: Center(
                          child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'Death \n\n',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                                text: '125893',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 23)),
                          ],
                        ),
                      ))),
                )),
                SizedBox(width: 13),
              ],
            ),
            SizedBox(height: 23),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(width: 13),
                Expanded(
                    child: Container(
                  //Set background for container.
                  color: Color(0xFFFFB259),
                  child: Container(
                      height: 111,
                      width: 50,
                      color: Color(0xFFF4CDC7A),
                      child: Center(
                          child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'Forign Confirm \n\n',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                                text: '125893',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 23)),
                          ],
                        ),
                      ))),
                )),
                SizedBox(width: 13),
                Expanded(
                    child: Container(
                  //Set background for container.
                  color: Color(0xFFFFB259),
                  child: Container(
                      height: 111,
                      width: 50,
                      color: Color(0xFF4CB5FF),
                      child: Center(
                          child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'Discharge \n\n',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                                text: '125893',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 23)),
                          ],
                        ),
                      ))),
                )),
                SizedBox(width: 13),
              ],
            ),
            SizedBox(height: 23),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(width: 13),
                  Expanded(
                      child: Container(
                    //Set background for container.
                    color: Color(0xFFFFB259),
                    child: Container(
                        height: 111,
                        width: 50,
                        color: Color(0xFFF9059FF),
                        child: Center(
                            child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'Forign Confirm \n\n',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '125893',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 23)),
                            ],
                          ),
                        ))),
                  )),
                  SizedBox(width: 13),
                ])
          ],
        ),
      ),
    );
  }
}
