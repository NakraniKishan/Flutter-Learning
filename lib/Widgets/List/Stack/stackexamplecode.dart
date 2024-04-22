import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class stackexamplecode extends StatefulWidget {

  @override
  State<stackexamplecode> createState() => _stackexamplecodeState();
}

class _stackexamplecodeState extends State<stackexamplecode> {
  String code = """
import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/Stack/stackexamplecode.dart';

class stackexample extends StatefulWidget {

  @override
  State<stackexample> createState() => _stackexampleState();
}

class _stackexampleState extends State<stackexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => stackexamplecode(),)
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
              Container(
                width: 200,
                height: 300,
                color: Colors.orange,
              ),
              Container(
                width: 300,
                height: 100,
                color: Colors.blue,
              ),
              Container(
                width: 100,
                height: 200,
                color: Colors.green,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),

          Stack(
            children: [

              Container(
                width: 200,
                height: 300,
                color: Colors.orange,
              ),

              Container(
                width: 100,
                height: 200,
                color: Colors.green,
              ),
              Container(
                width: 300,
                height: 100,
                color: Colors.blue,
              ),
            ],
          ),


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
        title: Text("Stack - Code",style: TextStyle(color: Colors.white),),
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
