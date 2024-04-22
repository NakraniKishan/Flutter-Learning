import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class customappbarcode extends StatefulWidget {

  @override
  State<customappbarcode> createState() => _customappbarcodeState();
}

class _customappbarcodeState extends State<customappbarcode> {
  String code = """
import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/Custom%20Appbar/customappbarcode.dart';

class customappbar extends StatefulWidget {
  @override
  State<customappbar> createState() => _customappbarState();
}

class _customappbarState extends State<customappbar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Custom Appbar"),
          leading: Icon(
            Icons.person,
            color: Colors.greenAccent,
          ),
          backgroundColor: Colors.indigo,
          centerTitle: true,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          shadowColor: Colors.yellow,
          elevation: 10,
          actions: [
            Icon(Icons.refresh),
            Icon(Icons.search),
            Icon(Icons.add),
            Icon(Icons.settings),
            IconButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => customappbarcode(),)
                );
              },
              icon: Icon(Icons.code),
            ),
            PopupMenuButton(
              //offset: Offset(0,50),
              tooltip: "Actions - To view this long press on popup button",
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Custom Appbar"),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Icon(
                    Icons.refresh,
                    color: Colors.white,
                  ),
                ),
                PopupMenuItem(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                PopupMenuItem(
                  child: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ),
              ],
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
        title: Text("Custom Appbar - Code",style: TextStyle(color: Colors.white),),
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
