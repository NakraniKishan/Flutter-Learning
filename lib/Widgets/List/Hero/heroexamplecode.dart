import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class heroexamplecode extends StatefulWidget {

  @override
  State<heroexamplecode> createState() => _heroexamplecodeState();
}

class _heroexamplecodeState extends State<heroexamplecode> {
  String code = """

import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/Hero/heroexamplecode.dart';

import 'heropageexample.dart';

class heroexample extends StatefulWidget {

  @override
  State<heroexample> createState() => _heroexampleState();
}

class _heroexampleState extends State<heroexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Hero",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => heroexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: Column(
        children: [
          // Hero(tag: "View Large Image", child: Icon(Icons.camera))
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => heropageexample(),)
              );
            },
            child: Hero(
              tag: "imageche",
              child: Image.network("https://images.unsplash.com/photo-1698404327936-720a24d7d274?auto=format&fit=crop&q=80&w=1974&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",width: 200,)

              // placeholderBuilder: (context, widget) {
              //   return Container(
              //     height: 150.0,
              //     width: 150.0,
              //     child: CircularProgressIndicator(),
              //   );
              // },
            ),
          ),
        ],
      )
    );
  }
}










import 'package:flutter/material.dart';

import 'heroexamplecode.dart';

class heropageexample extends StatefulWidget {
  @override
  State<heropageexample> createState() => _heropageexampleState();
}

class _heropageexampleState extends State<heropageexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white,),
          title: Text("Hero-View",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.black,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => heroexamplecode(),
                ));
              },
              icon: Icon(Icons.code),
            )
          ],
        ),
        body: Hero(
          tag: "imageche",
            child: Image.network(
                "https://images.unsplash.com/photo-1698404327936-720a24d7d274?auto=format&fit=crop&q=80&w=1974&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")));
  }
}





""";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Hero - Code",style: TextStyle(color: Colors.white),),
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
