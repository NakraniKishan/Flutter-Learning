import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class gesturedetectorexamplecode extends StatefulWidget {

  @override
  State<gesturedetectorexamplecode> createState() => _gesturedetectorexamplecodeState();
}

class _gesturedetectorexamplecodeState extends State<gesturedetectorexamplecode> {
  String code = """
import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/Gesture%20Detector/gesturedetectorexamplecode.dart';

class gesturedetectorexample extends StatefulWidget {

  @override
  State<gesturedetectorexample> createState() => _gesturedetectorexampleState();
}

class _gesturedetectorexampleState extends State<gesturedetectorexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gesture Detector"),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => gesturedetectorexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),

      body: Column(
        children: [
          Row(
            children: [],
          ),
          SizedBox(
            height: 10,
          ),
          
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => gesturedetectorexamplecode(),)
              );
            },
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Text("Tap Me - I am Container"),
            ),
          ),

          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onDoubleTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => gesturedetectorexamplecode(),)
              );
            },
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Text("Double Tap Me - I am Container"),
            ),
          ),
          SizedBox(
            height: 10,
          ),

          GestureDetector(
            onLongPress: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => gesturedetectorexamplecode(),)
              );
            },
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Text("On Long Press Me - I am Container"),
            ),
          ),

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
        title: Text("Gesture Detector - Code",style: TextStyle(color: Colors.white),),
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
