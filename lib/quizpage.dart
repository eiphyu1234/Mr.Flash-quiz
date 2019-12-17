import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mr_flash/category.dart';
import 'package:mr_flash/color/colorClass.dart';
import 'package:mr_flash/levels.dart';

import 'finish.dart';

class getjson extends StatefulWidget {

  final String langname;
  final Category category;
  const getjson(@required this.langname,{Key key, this.category}) : super(key: key);

  @override
  _GetJsonState createState() => _GetJsonState(langname);
}

class _GetJsonState extends State<getjson> {

  String langname;
  Category category;
  String assettoload;

  _GetJsonState(this.langname);

  @override
  Widget build(BuildContext context) {

    print(widget.category.name);

    setasset() {
      if (langname == "Java" && widget.category.name == "Basic") {
        assettoload = "assets/java.json";
      }else if (langname == "Java" && widget.category.name == "Lesson 1") {
        assettoload = "assets/java1.json";
      }else if (langname == "Java" && widget.category.name == "Lesson 2") {
        assettoload = "assets/java2.json";
      }else if (langname == "Java" && widget.category.name == "Lesson 3") {
        assettoload = "assets/java3.json";
      }else if (langname == "Java" && widget.category.name == "Lesson 4") {
        assettoload = "assets/java4.json";
      }else if (langname == "Java" && widget.category.name == "Lesson 5") {
        assettoload = "assets/java5.json";
      }else if (langname == "Java" && widget.category.name == "Lesson 6") {
        assettoload = "assets/java6.json";
      }else if (langname == "Java" && widget.category.name == "Lesson 7") {
        assettoload = "assets/java7.json";
      }else if (langname == "Java" && widget.category.name == "Lesson 8") {
        assettoload = "assets/java8.json";
      }else if (langname == "Java" && widget.category.name == "Lesson 9") {
        assettoload = "assets/java9.json";
      }else if (langname == "Java" && widget.category.name == "Lesson 10") {
        assettoload = "assets/java10.json";
      }else if (langname == "Java" && widget.category.name == "Lesson 11") {
        assettoload = "assets/java.json";
      }else if (langname == "Java" && widget.category.name == "Lesson 12") {
        assettoload = "assets/java.json";
      }else if (langname == "Python" && widget.category.name == "Basic") {
        assettoload = "assets/python.json";
      }else if (langname == "Python" && widget.category.name == "Lesson 1") {
        assettoload = "assets/python1.json";
      }else  if (langname == "Python" && widget.category.name == "Lesson 2") {
        assettoload = "assets/python2.json";
      }else  if (langname == "Python" && widget.category.name == "Lesson 3") {
        assettoload = "assets/python3.json";
      }else  if (langname == "Python" && widget.category.name == "Lesson 4") {
        assettoload = "assets/python4.json";
      }else  if (langname == "Python" && widget.category.name == "Lesson 5") {
        assettoload = "assets/python5.json";
      }else  if (langname == "Python" && widget.category.name == "Lesson 6") {
        assettoload = "assets/python6.json";
      }else  if (langname == "Python" && widget.category.name == "Lesson 7") {
        assettoload = "assets/python7.json";
      }else  if (langname == "Python" && widget.category.name == "Lesson 8") {
        assettoload = "assets/python8.json";
      }else  if (langname == "Python" && widget.category.name == "Lesson 9") {
        assettoload = "assets/python9.json";
      }else  if (langname == "Python" && widget.category.name == "Lesson 10") {
        assettoload = "assets/python10.json";
      }else  if (langname == "Python" && widget.category.name == "Lesson 11") {
        assettoload = "assets/python.json";
      }else  if (langname == "Python" && widget.category.name == "Lesson 12") {
        assettoload = "assets/python.json";
      } else if (langname == "JavaScript" && widget.category.name == "Basic") {
        assettoload = "assets/js.json";
      }else if (langname == "JavaScript" && widget.category.name == "Lesson 1") {
        assettoload = "assets/js1.json";
      }else if (langname == "JavaScript" && widget.category.name == "Lesson 2") {
        assettoload = "assets/js2.json";
      }else if (langname == "JavaScript" && widget.category.name == "Lesson 3") {
        assettoload = "assets/js3.json";
      }else if (langname == "JavaScript" && widget.category.name == "Lesson 4") {
        assettoload = "assets/js4.json";
      }else if (langname == "JavaScript" && widget.category.name == "Lesson 5") {
        assettoload = "assets/js5.json";
      }else if (langname == "JavaScript" && widget.category.name == "Lesson 6") {
        assettoload = "assets/js6.json";
      }else if (langname == "JavaScript" && widget.category.name == "Lesson 7") {
        assettoload = "assets/js7.json";
      }else if (langname == "JavaScript" && widget.category.name == "Lesson 8") {
        assettoload = "assets/js8.json";
      }else if (langname == "JavaScript" && widget.category.name == "Lesson 9") {
        assettoload = "assets/js9.json";
      }else if (langname == "JavaScript" && widget.category.name == "Lesson 10") {
        assettoload = "assets/js10.json";
      }else if (langname == "JavaScript" && widget.category.name == "Lesson 11") {
        assettoload = "assets/js.json";
      }else if (langname == "JavaScript" && widget.category.name == "Lesson 12") {
        assettoload = "assets/js.json";
      }else if (langname == "C++" && widget.category.name == "Basic") {
        assettoload = "assets/cpp.json";
      }else if (langname == "C++" && widget.category.name == "Lesson 1") {
      assettoload = "assets/cpp1.json";
      }else if (langname == "C++" && widget.category.name == "Lesson 2") {
      assettoload = "assets/cpp2.json";
      }else if (langname == "C++" && widget.category.name == "Lesson 3") {
      assettoload = "assets/cpp3.json";
      }else if (langname == "C++" && widget.category.name == "Lesson 4") {
      assettoload = "assets/cpp4.json";
      }else if (langname == "C++" && widget.category.name == "Lesson 5") {
      assettoload = "assets/cpp5.json";
      }else if (langname == "C++" && widget.category.name == "Lesson 6") {
      assettoload = "assets/cpp6.json";
      }else if (langname == "C++" && widget.category.name == "Lesson 7") {
      assettoload = "assets/cpp7.json";
      }else if (langname == "C++" && widget.category.name == "Lesson 8") {
      assettoload = "assets/cpp8.json";
      }else if (langname == "C++" && widget.category.name == "Lesson 9") {
      assettoload = "assets/cpp9.json";
      }else if (langname == "C++" && widget.category.name == "Lesson 10") {
      assettoload = "assets/cpp10.json";
      }else if (langname == "C++" && widget.category.name == "Lesson 11") {
      assettoload = "assets/cpp.json";
      }else if (langname == "C++" && widget.category.name == "Lesson 12") {
        assettoload = "assets/cpp.json";
      } if (langname == "Php" && widget.category.name == "Basic") {
        assettoload = "assets/php.json";
      }else if (langname == "Php" && widget.category.name == "Lesson 1") {
        assettoload = "assets/php1.json";
      }else if (langname == "Php" && widget.category.name == "Lesson 2") {
        assettoload = "assets/php2.json";
      }else if (langname == "Php" && widget.category.name == "Lesson 3") {
        assettoload = "assets/php3.json";
      }else if (langname == "Php" && widget.category.name == "Lesson 4") {
        assettoload = "assets/php4.json";
      }else if (langname == "Php" && widget.category.name == "Lesson 5") {
        assettoload = "assets/php5.json";
      }else if (langname == "Php" && widget.category.name == "Lesson 6") {
        assettoload = "assets/php6.json";
      }else if (langname == "Php" && widget.category.name == "Lesson 7") {
        assettoload = "assets/php7.json";
      }else if (langname == "Php" && widget.category.name == "Lesson 8") {
        assettoload = "assets/php8.json";
      }else if (langname == "Php" && widget.category.name == "Lesson 9") {
        assettoload = "assets/php9.json";
      }else if (langname == "Php" && widget.category.name == "Lesson 10") {
        assettoload = "assets/php10.json";
      }else if (langname == "Php" && widget.category.name == "Lesson 11") {
        assettoload = "assets/php.json";
      }else if (langname == "Php" && widget.category.name == "Lesson 12") {
        assettoload = "assets/php.json";
      }
    }

    setasset();
    final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

    // and now we return the FutureBuilder to load and decode JSON
    return FutureBuilder(
      future:
      DefaultAssetBundle.of(context).loadString(assettoload, cache: true),
      builder: (context, snapshot) {
        List mydata = json.decode(snapshot.data.toString());
        if (mydata == null) {
          return Scaffold(
            body: Center(
              child: Text(
                "Loading",
              ),
            ),
          );
        } else {
          return WillPopScope(
          child: Scaffold(
          key: _key,
          appBar: AppBar(
            backgroundColor: appColor,
            leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
                _onWillPop();
                }),
        title: Text(widget.category.name),
        elevation: 0,
        ),
            body:quizpage(mydata: mydata)
          ),
          );
        }
      },
    );
  }
  Future<bool> _onWillPop() async {
    return showDialog<bool>(
        context: context,
        builder: (_) {
          return AlertDialog(
            content: Text("Are you sure you want to quit the quiz? All your progress will be lost."),
            title: Text("Warning!"),
            actions: <Widget>[
              FlatButton(
                child: Text("Yes"),
                onPressed: (){
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => levels(langname)
                      )
                  );                },
              ),
              FlatButton(
                child: Text("No"),
                onPressed: (){
                  Navigator.pop(context,false);
                },
              ),
            ],
          );
        }
    );
  }
}

class quizpage extends StatefulWidget {
  var mydata;
  quizpage({Key key, @required this.mydata}) : super(key: key);
  @override
  _quizpageState createState() => _quizpageState(mydata);
}

class _quizpageState extends State<quizpage> {

  var mydata;
  _quizpageState(this.mydata);

  Color colortoshow = appColor;
  Color right = greenColor;
  Color wrong = redColor;
  int marks = 0;
  int i = 1;
  int timer = 30;
  String showtimer = "30";

  Map<String, Color> btncolor = {
    "a": appColor,
    "b": appColor,
    "c": appColor,
    "d": appColor,
  };

  bool canceltimer = false;

  // overriding the initstate function to start timer as this screen is created
  @override
  void initState() {
    starttimer();
    super.initState();
  }

  // overriding the setstate function to be called only if mounted
  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  void starttimer() async {
    const onesec = Duration(seconds: 1);
    Timer.periodic(onesec, (Timer t) {
      setState(() {
        if (timer < 1) {
          t.cancel();
          nextquestion();
        } else if (canceltimer == true) {
          t.cancel();
        } else {
          timer = timer - 1;
        }
        showtimer = timer.toString();
      });
    });
  }

  void nextquestion() {
    canceltimer = false;
    timer = 30;
    setState(() {
      if (i < 10) {
        i++;
      } else {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => QuizFinishedPage(marks: marks),
        ));
      }
      btncolor["a"] =appColor;
      btncolor["b"] = appColor;
      btncolor["c"] = appColor;
      btncolor["d"] = appColor;
    });
    starttimer();
  }

  void checkanswer(String k) {
    if (mydata[2][i.toString()] == mydata[1][i.toString()][k]) {
      marks = marks + 20;
      colortoshow = right;
    } else {
      colortoshow = wrong;
    }
    setState(() {
      btncolor[k] = colortoshow;
      canceltimer = true;
    });

    Timer(Duration(milliseconds: 500), nextquestion);
  }

  Widget choicebutton(String k) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      child: MaterialButton(
        onPressed: () => checkanswer(k),
        child: Text(
          mydata[1][i.toString()][k],
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Alike",
            fontSize: 16.0,
          ),
          maxLines: 1,
        ),
        color: btncolor[k],
        splashColor: Colors.indigo[700],
        highlightColor: Colors.indigo[700],
        minWidth: 200.0,
        height: 45.0,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);

        return Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  mydata[0][i.toString()],
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: "Quando",
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    choicebutton('a'),
                    choicebutton('b'),
                    choicebutton('c'),
                    choicebutton('d'),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.topCenter,
                child: Center(
                  child: Text(
                    showtimer,
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Times New Roman',
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
  }
}
