import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class positionexamplecode extends StatefulWidget {

  @override
  State<positionexamplecode> createState() => _positionexamplecodeState();
}

class _positionexamplecodeState extends State<positionexamplecode> {
  String code = """


import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/Position/positionexamplecode.dart';

class positionexample extends StatefulWidget {

  @override
  State<positionexample> createState() => _positionexampleState();
}

class _positionexampleState extends State<positionexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Position"),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => positionexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Row(),
              Container(
                width: 300,
                height: 300,
                color: Colors.blue,
              ),
              Positioned(
                left: 50,
                bottom: 50,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.green,

                ),
              ),
              Positioned(
                left: 100,
                bottom: 100,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              )
            ],
          )
        ],
      )
    );
  }
}



""";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Position - Code",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: IconButton(
                onPressed: () {
                  Clipboard.setData(new ClipboardData(text: code))
                      .then((value) {
                    // key.currentState.showSnackBar(SnackBar(
                    //   content: new Text("Copied to Clipboard"),
                    // ));
                  });
                },
                icon: Icon(Icons.copy)),
          ),
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
