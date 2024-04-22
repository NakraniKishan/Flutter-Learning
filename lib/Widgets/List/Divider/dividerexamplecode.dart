import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class dividerexamplecode extends StatefulWidget {

  @override
  State<dividerexamplecode> createState() => _dividerexamplecodeState();
}

class _dividerexamplecodeState extends State<dividerexamplecode> {
  String code = """

import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/Divider/dividerexamplecode.dart';

class dividerexample extends StatefulWidget {

  @override
  State<dividerexample> createState() => _dividerexampleState();
}

class _dividerexampleState extends State<dividerexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Divider"),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => dividerexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: Column(
        children: [

          Row(
            children: [

            ],
          ),

          Text("Now we are using Divider - A Default Line"),
          Divider(),
          Text("Now we are using Divider - A Red Line"),
          Divider(color: Colors.red),
          Text("Now we are using Divider - A Red+Height Line"),
          Divider(color: Colors.red,height: 100),
          Text("Now we are using Divider - A Red+IndentStart Line"),
          Divider(color: Colors.red,indent: 100),
          Text("Now we are using Divider - A Red+Thikness Line"),
          Divider(color: Colors.red,thickness: 10),
          Text("Now we are using Divider - A Red+IndentEnd Line"),
          Divider(color: Colors.red,endIndent: 100),

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
        title: Text("Divider - Code",style: TextStyle(color: Colors.white),),
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
