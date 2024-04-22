import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class urllauncerexamplecode extends StatefulWidget {

  @override
  State<urllauncerexamplecode> createState() => _urllauncerexamplecodeState();
}

class _urllauncerexamplecodeState extends State<urllauncerexamplecode> {
  String code = """

import 'package:flutter/material.dart';
import 'package:trainingdemo/Dependencies/List/Url%20Launcher/urllauncerexamplecode.dart';
import 'package:url_launcher/url_launcher.dart';

class urllauncerexample extends StatefulWidget {

  @override
  State<urllauncerexample> createState() => _urllauncerexampleState();
}

class _urllauncerexampleState extends State<urllauncerexample> {
  var url = "";
  bool hide = false;


  // Past this code in android->app->src->main->androidmanifest.xml
  // <queries>
  // <intent>
  // <action android:name="android.intent.action.VIEW"/>
  // <data android:scheme="https"/>
  // </intent>
  // <intent>
  // <action android:name="android.intent.action.DIAL"/>
  // <data android:scheme="tel"/>
  // </intent>
  // <intent>
  // <action android:name="android.intent.action.SEND"/>
  // <data android:mimeType="*/*"/>
  // </intent>
  // </queries>

  launchURL(String url) async {
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Could not launch url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("URL Launcher",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => urllauncerexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: IconButton(
                onPressed: () {
                  // const url = "https://in.linkedin.com/in/kishan-nakrani";
                  // launchURL(url);
                  const url = 'https://www.linkedin.com/feed/';
                  launchURL(url);
                },
                // icon: Icon(Icons.info),
                icon: Image.asset(
                  "assets/dependency/urllauncher/linkedinicon.png",

                  width: 25,
                ),
              ),
            ),
            // Center(
            //   child: IconButton(
            //     onPressed: () {
            //       // const url = "https://in.linkedin.com/in/kishan-nakrani";
            //       // launchURL(url);
            //       const url = 'https://www.youtube.com/';
            //       launchURL(url);
            //     },
            //     // icon: Icon(Icons.info),
            //     icon: Icon(Icons.signal_wifi_connected_no_internet_4_outlined)
            //   ),
            // ),




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
        title: Text("URL Launcher - Code",style: TextStyle(color: Colors.white),),
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
