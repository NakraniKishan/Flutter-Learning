import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class closeappcode extends StatefulWidget {

  @override
  State<closeappcode> createState() => _closeappcodeState();
}

class _closeappcodeState extends State<closeappcode> {
  String code = """
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:trainingdemo/Dependencies/List/Close%20App%20Double%20Tap/closeappcode.dart';

class closeapp extends StatefulWidget {

  @override
  State<closeapp> createState() => _closeappState();
}

class _closeappState extends State<closeapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Close App "),
          backgroundColor: Colors.black,
          centerTitle: true,
          leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){
            Navigator.of(context).pop();
          }),
          actions: [
            IconButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => closeappcode(),)
                );
              },
              icon: Icon(Icons.code),
            )
          ],
        ),
      body: DoubleBackToCloseApp(
        snackBar: SnackBar(
          content: Text("Tap Back again to leave"),
        ),
        child: Center(
          child: OutlinedButton(
            child: Text("Tap to simulate Back"),
            onPressed: WidgetsBinding.instance.handlePopRoute,
          ),
        ),
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
        title: Text("Close App - Code",style: TextStyle(color: Colors.white),),
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
