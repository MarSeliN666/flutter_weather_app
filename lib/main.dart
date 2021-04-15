import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
  // int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // _counter++;
    });
  }

  _textStyle(double _fontSize, FontWeight _fontWeight) {
    return TextStyle(
      fontSize: _fontSize,
      fontWeight: _fontWeight,
      color: Colors.white,
      fontFamily: 'VarelaRound',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TemperatureLayout
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg_pic.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 24,
                            ),
                            Text(
                              'UKRAINE, Kiev',
                              style: _textStyle(24, FontWeight.normal),
                            ),
                            Text(
                              '19°',
                              style: _textStyle(84, FontWeight.bold),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(children: [
                          SizedBox(
                            height: 24,
                          ),
                          RotatedBox(
                            quarterTurns: 3,
                            child: Text(
                              'It\'s sunny',
                              style: _textStyle(32, FontWeight.bold),
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0x30000000),
                    borderRadius: BorderRadius.all(
                      Radius.circular(18.0),
                    ),
                    border: Border.all(
                      color: Color(0xffffffff),
                      width: 2,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              '43 %',
                              style: _textStyle(18, FontWeight.bold),
                            ),
                            Text(
                              'Humidity',
                              style: _textStyle(18, FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 42,
                        width: 2,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              '4 km',
                              style: _textStyle(18, FontWeight.bold),
                            ),
                            Text(
                              'Visibility',
                              style: _textStyle(18, FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 42,
                        width: 2,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              '64 %',
                              style: _textStyle(18, FontWeight.bold),
                            ),
                            Text(
                              'U/Index',
                              style: _textStyle(18, FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ],
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
