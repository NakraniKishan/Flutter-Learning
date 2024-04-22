import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:trainingdemo/Dependencies/List/Flutter%20Syntax%20View/fluttersyntaxviewexamplecode.dart';

class fluttersyntaxviewexample extends StatefulWidget {

  @override
  State<fluttersyntaxviewexample> createState() => _fluttersyntaxviewexampleState();
}

class _fluttersyntaxviewexampleState extends State<fluttersyntaxviewexample> {
  String code = """

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:trainingdemo/Dependencies/List/Flutter%20Syntax%20View/fluttersyntaxviewexamplecode.dart';

class fluttersyntaxviewexample extends StatefulWidget {

  @override
  State<fluttersyntaxviewexample> createState() => _fluttersyntaxviewexampleState();
}

class _fluttersyntaxviewexampleState extends State<fluttersyntaxviewexample> {
  String code = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Syntax View"),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => fluttersyntaxviewexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),

      body:  SyntaxView(
        code: code,
        syntax: Syntax.DART,
        expanded: true,
        syntaxTheme: SyntaxTheme.gravityDark(),
        fontSize: 12.0,
        withZoom: false,
        withLinesCount: false,
      ),
    );
  }
}


""";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Syntax View",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => fluttersyntaxviewexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),

      body:  SyntaxView(
        code: code,
        syntax: Syntax.DART,
        expanded: true,
        syntaxTheme: SyntaxTheme.gravityDark(),
        fontSize: 12.0,
        withZoom: false,
        withLinesCount: false,
      ),
    );
  }
}
