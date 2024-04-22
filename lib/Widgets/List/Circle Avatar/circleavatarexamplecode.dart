import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class circleavatarexamplecode extends StatefulWidget {

  @override
  State<circleavatarexamplecode> createState() => _circleavatarexamplecodeState();
}

class _circleavatarexamplecodeState extends State<circleavatarexamplecode> {
  String code = """
import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/Circle%20Avatar/circleavatarexamplecode.dart';

class circleavatarexample extends StatefulWidget {

  @override
  State<circleavatarexample> createState() => _circleavatarexampleState();
}

class _circleavatarexampleState extends State<circleavatarexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Circle"),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => circleavatarexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            CircleAvatar(),
            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              backgroundColor: Colors.green,
            ),
            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              foregroundColor: Colors.lightBlue,
            ),
            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              maxRadius: 50,
            ),
            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              minRadius: 30,
            ),
            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              radius: 50,
             ),
            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              radius: 50,
            foregroundImage: AssetImage("assets/Widgets/List/ListTile/image1.jpg"),
            ),
            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              radius: 50,
              child: Text("Circle Avatar"),
            ),
            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              radius: 50,

              child: Image.asset("assets/Widgets/List/ListTile/image1.jpg"),
            ),



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
        title: Text("Circle Avatar - Code",style: TextStyle(color: Colors.white),),
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
