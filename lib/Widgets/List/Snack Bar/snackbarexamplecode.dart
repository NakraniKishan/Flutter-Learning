import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class snackbarexamplecode extends StatefulWidget {

  @override
  State<snackbarexamplecode> createState() => _snackbarexamplecodeState();
}

class _snackbarexamplecodeState extends State<snackbarexamplecode> {
  String code = """

import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/Snack%20Bar/snackbarexamplecode.dart';

class snackbarexample extends StatefulWidget {

  @override
  State<snackbarexample> createState() => _snackbarexampleState();
}

class _snackbarexampleState extends State<snackbarexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snack Bar"),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => snackbarexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green)),
            onPressed: () {
              const snackdemo = SnackBar(
                content: Text('Hello Friends, I am SnackBar'),
                backgroundColor: Colors.green,
                elevation: 10,
                duration: Duration(seconds: 10),
                showCloseIcon: true,
                closeIconColor: Colors.red,
                
                behavior: SnackBarBehavior.floating,
                margin: EdgeInsets.all(5),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackdemo
                // SnackBar(content: Text('Hello Friends, I am SnackBar'),
                //   backgroundColor: Colors.green,
                //   elevation: 10,
                //   behavior: SnackBarBehavior.floating,
                //   margin: EdgeInsets.all(5),
                // ),
              );


            },
            child: const Text('Click Me'),
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
        title: Text("Snackbar - Code",style: TextStyle(color: Colors.white),),
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
