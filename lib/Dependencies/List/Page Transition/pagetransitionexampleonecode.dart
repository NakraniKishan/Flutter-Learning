import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class pagetransitionexampleonecode extends StatefulWidget {

  @override
  State<pagetransitionexampleonecode> createState() => _pagetransitionexampleonecodeState();
}

class _pagetransitionexampleonecodeState extends State<pagetransitionexampleonecode> {
  String code = """
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:trainingdemo/Dependencies/List/Page%20Transition/example/pagetransitionexampleonecode.dart';

class pagetransitionexample extends StatefulWidget {

  @override
  State<pagetransitionexample> createState() => _pagetransitionexampleState();
}

class _pagetransitionexampleState extends State<pagetransitionexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Transition"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              onTap: (){
                Navigator.of(context).push(
                    PageTransition(child: pagetransitionexampleonecode(), type: PageTransitionType.bottomToTop,alignment: Alignment.center,duration: Duration(seconds: 3), )
                );
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => silverappbarexample(),));
              },
              title: Text("Page Transition"),
              subtitle: Text("PageTransitionType.bottomToTop "),
            ),
            ListTile(
              onTap: (){
                Navigator.of(context).push(
                    PageTransition(child: pagetransitionexampleonecode(), type: PageTransitionType.fade,alignment: Alignment.center,duration: Duration(seconds: 3), )
                );
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => silverappbarexample(),));
              },
              title: Text("Page Transition"),
              subtitle: Text("PageTransitionType.fade "),
            ),
            ListTile(
              onTap: (){
                Navigator.of(context).push(
                    PageTransition(child: pagetransitionexampleonecode(), type: PageTransitionType.leftToRight,alignment: Alignment.center,duration: Duration(seconds: 3), )
                );
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => silverappbarexample(),));
              },
              title: Text("Page Transition"),
              subtitle: Text("PageTransitionType.leftToRight "),
            ),
            ListTile(
              onTap: (){
                Navigator.of(context).push(
                    PageTransition(child: pagetransitionexampleonecode(), type: PageTransitionType.rightToLeft,alignment: Alignment.center,duration: Duration(seconds: 3), )
                );
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => silverappbarexample(),));
              },
              title: Text("Page Transition"),
              subtitle: Text("PageTransitionType.rightToLeft "),
            ),
            ListTile(
              onTap: (){
                Navigator.of(context).push(
                    PageTransition(child: pagetransitionexampleonecode(), type: PageTransitionType.rotate,alignment: Alignment.center,duration: Duration(seconds: 3), )
                );
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => silverappbarexample(),));
              },
              title: Text("Page Transition"),
              subtitle: Text("PageTransitionType.rotate "),
            ),
            ListTile(
              onTap: (){
                Navigator.of(context).push(
                    PageTransition(child: pagetransitionexampleonecode(), type: PageTransitionType.scale,alignment: Alignment.center,duration: Duration(seconds: 3), )
                );
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => silverappbarexample(),));
              },
              title: Text("Page Transition"),
              subtitle: Text("PageTransitionType.scale "),
            ),
            ListTile(
              onTap: (){
                Navigator.of(context).push(
                    PageTransition(child: pagetransitionexampleonecode(), type: PageTransitionType.size,alignment: Alignment.center,duration: Duration(seconds: 3), )
                );
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => silverappbarexample(),));
              },
              title: Text("Page Transition"),
              subtitle: Text("PageTransitionType.size "),
            ),
            ListTile(
              onTap: (){
                Navigator.of(context).push(
                    PageTransition(child: pagetransitionexampleonecode(), type: PageTransitionType.theme,alignment: Alignment.center,duration: Duration(seconds: 3), )
                );
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => silverappbarexample(),));
              },
              title: Text("Page Transition"),
              subtitle: Text("PageTransitionType.theme "),
            ),
            ListTile(
              onTap: (){
                Navigator.of(context).push(
                    PageTransition(child: pagetransitionexampleonecode(), type: PageTransitionType.topToBottom,alignment: Alignment.center,duration: Duration(seconds: 3), )
                );
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => silverappbarexample(),));
              },
              title: Text("Page Transition"),
              subtitle: Text("PageTransitionType.topToBottom "),
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
        title: Text("PageTransition - Code",style: TextStyle(color: Colors.white),),
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
