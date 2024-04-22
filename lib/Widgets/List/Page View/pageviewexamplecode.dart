import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class pageviewexamplecode extends StatefulWidget {

  @override
  State<pageviewexamplecode> createState() => _pageviewexamplecodeState();
}

class _pageviewexamplecodeState extends State<pageviewexamplecode> {
  String code = """

import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/Page%20View/Pages/pageviewone.dart';
import 'package:trainingdemo/Widgets/List/Page%20View/Pages/pageviewthree.dart';
import 'package:trainingdemo/Widgets/List/Page%20View/Pages/pageviewtwo.dart';
import 'package:trainingdemo/Widgets/List/Page%20View/pageviewexamplecode.dart';

class pageviewexample extends StatefulWidget {

  @override
  State<pageviewexample> createState() => _pageviewexampleState();
}

class _pageviewexampleState extends State<pageviewexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View"),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => pageviewexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: PageView(

        // scrollDirection: Axis.vertical,
        // reverse: true,
        
        children: [
          pageviewone(),
          pageviewtwo(),
          pageviewthree()
        ],
      )
    );
  }
}








//pageviewone()


import 'package:flutter/material.dart';

class pageviewone extends StatefulWidget {

  @override
  State<pageviewone> createState() => _pageviewoneState();
}

class _pageviewoneState extends State<pageviewone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Column(
        children: [

        ],
      ),
    );
  }
}


//pageviewtwo()

import 'package:flutter/material.dart';

class pageviewtwo extends StatefulWidget {

  @override
  State<pageviewtwo> createState() => _pageviewtwoState();
}

class _pageviewtwoState extends State<pageviewtwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [

        ],
      ),
    );
  }
}



//pageviewthree()

import 'package:flutter/material.dart';

class pageviewthree extends StatefulWidget {

  @override
  State<pageviewthree> createState() => _pageviewthreeState();
}

class _pageviewthreeState extends State<pageviewthree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [

        ],
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
        title: Text("Page View - Code",style: TextStyle(color: Colors.white),),
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
