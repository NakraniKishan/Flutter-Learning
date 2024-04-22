import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class flutterblurhashexamplecode extends StatefulWidget {

  @override
  State<flutterblurhashexamplecode> createState() => _flutterblurhashexamplecodeState();
}

class _flutterblurhashexamplecodeState extends State<flutterblurhashexamplecode> {
  String code = """


import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:trainingdemo/Dependencies/List/Flutter%20Blur%20Hash/flutterblurhashexamplecode.dart';

class flutterblurhashexample extends StatefulWidget {
  @override
  State<flutterblurhashexample> createState() => _flutterblurhashexampleState();
}

class _flutterblurhashexampleState extends State<flutterblurhashexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          "BlurHash Image",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => flutterblurhashexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),

      body: SizedBox.expand(
        child: Center(
          child: AspectRatio(
            aspectRatio: 1.6,
            child: BlurHash(
                hash: "LoI#GXIooeWC~VoLRjay9axaM|of",
                image: "https://images.unsplash.com/photo-1682687220742-aba13b6e50ba?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                imageFit: BoxFit.cover,
              duration: Duration(seconds: 5),
              curve: Curves.easeInOut,
              // color: Colors.white,

            ),
          ),
        ),
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
        title: Text("BlurHash Image - Code",style: TextStyle(color: Colors.white),),
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
