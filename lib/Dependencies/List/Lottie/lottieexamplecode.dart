import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class lottieexamplecode extends StatefulWidget {

  @override
  State<lottieexamplecode> createState() => _lottieexamplecodeState();
}

class _lottieexamplecodeState extends State<lottieexamplecode> {
  String code = """
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:trainingdemo/Dependencies/List/Lottie/lottieexamplecode.dart';

class lottieexample extends StatefulWidget {

  @override
  State<lottieexample> createState() => _lottieexampleState();
}

class _lottieexampleState extends State<lottieexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lottie"),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => lottieexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Place Lottie Image"),
            Lottie.asset("assets/dependency/lottie/loading.json"),
            Text("Width = 200, framerate = 30"),
            Lottie.asset("assets/dependency/lottie/password.json",width: 200,frameRate: FrameRate(30)),





          ],
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
        title: Text("Lottie - Code",style: TextStyle(color: Colors.white),),
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
