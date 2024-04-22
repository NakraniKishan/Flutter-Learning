import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class googlefontsexamplecode extends StatefulWidget {

  @override
  State<googlefontsexamplecode> createState() => _googlefontsexamplecodeState();
}

class _googlefontsexamplecodeState extends State<googlefontsexamplecode> {
  String code = """
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trainingdemo/Dependencies/List/Google%20Fonts/googlefontsexamplecode.dart';

class googlefontsexample extends StatefulWidget {

  @override
  State<googlefontsexample> createState() => _googlefontsexampleState();
}

class _googlefontsexampleState extends State<googlefontsexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Fonts"),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => googlefontsexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text("Google Fonts",style: GoogleFonts.aclonica(fontSize: 40),),
          SizedBox(
            height: 10,
          ),
          Text("Google Fonts",style: GoogleFonts.actor(fontSize: 40),),
          SizedBox(
            height: 10,
          ),
          Text("Google Fonts",style: GoogleFonts.balooBhaijaan2(fontSize: 40),),
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
        title: Text("Google  - Code",style: TextStyle(color: Colors.white),),
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
