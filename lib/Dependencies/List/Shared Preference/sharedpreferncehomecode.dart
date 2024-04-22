import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class sharedpreferncehomecode extends StatefulWidget {

  @override
  State<sharedpreferncehomecode> createState() => _sharedpreferncehomecodeState();
}

class _sharedpreferncehomecodeState extends State<sharedpreferncehomecode> {
  String code = """

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trainingdemo/Dependencies/List/Shared%20Preference/sharedpreferncehomecode.dart';
import 'package:trainingdemo/Dependencies/List/Shared%20Preference/sharedpreferncelogin.dart';

class sharedpreferncehome extends StatefulWidget {

  @override
  State<sharedpreferncehome> createState() => _sharedpreferncehomeState();
}

class _sharedpreferncehomeState extends State<sharedpreferncehome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => sharedpreferncehomecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Row(
              children: [
                Text("Welcome Home")
              ],
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () async{
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.clear().then((value) {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => sharedpreferncelogin(),)
                  );
                });

              },
              child: Text("Logout"),
              color: Colors.black,
              textColor: Colors.white,
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
        title: Text("Home - Code",style: TextStyle(color: Colors.white),),
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
