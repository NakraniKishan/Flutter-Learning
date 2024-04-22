import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class generateqrcodeexamplecode extends StatefulWidget {

  @override
  State<generateqrcodeexamplecode> createState() => _generateqrcodeexamplecodeState();
}

class _generateqrcodeexamplecodeState extends State<generateqrcodeexamplecode> {
  String code = """

import 'package:flutter/material.dart';
import 'package:trainingdemo/Dependencies/List/QR%20Code%20Generator/Generate/generateqrcodeexamplecode.dart';

import '../View/viewqrcodeexample.dart';

class generateqrcodeexample extends StatefulWidget {

  @override
  State<generateqrcodeexample> createState() => _generateqrcodeexampleState();
}

class _generateqrcodeexampleState extends State<generateqrcodeexample> {
  TextEditingController qrdatainput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Generate QR Code"),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => generateqrcodeexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),

      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              controller: qrdatainput,
              decoration: InputDecoration(
                hintText: "Title",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => viewqrcodeexample(did: qrdatainput.text),));
            },
              color: Colors.black,
              child: Text("Generate QR Code",style: TextStyle(color: Colors.white
              ),),
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
        title: Text("Generate QR Code - Code",style: TextStyle(color: Colors.white),),
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
