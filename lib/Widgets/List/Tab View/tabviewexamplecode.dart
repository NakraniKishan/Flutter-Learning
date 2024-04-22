import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class tabviewexamplecode extends StatefulWidget {

  @override
  State<tabviewexamplecode> createState() => _tabviewexamplecodeState();
}

class _tabviewexamplecodeState extends State<tabviewexamplecode> {
  String code = """
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/Tab%20View/tabviewexamplecode.dart';

class tabviewexample extends StatefulWidget {

  @override
  State<tabviewexample> createState() => _tabviewexampleState();
}

class _tabviewexampleState extends State<tabviewexample> with TickerProviderStateMixin {
  late TabController _tabcon;
  @override
  void initState() {
    _tabcon =  TabController(length: 3,initialIndex: 1, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white,),
          title: Text("Tab View",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.black,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => tabviewexamplecode(),)
                );
              },
              icon: Icon(Icons.code),
            )
          ],
          bottom: TabBar(
            controller: _tabcon,
            indicatorColor: Colors.yellow,

            tabs: [

              Tab(
                child: Text("Post",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              ),
              Tab(
                child: Text("Followers",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              ),
              Tab(
                child: Text("Following",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabcon,
          children: [
            Center(
              child: Text("Post",),
            ),
            Center(
              child: Text("Followers",),
            ),
            Center(
              child: Text("Following",),
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
        title: Text("Tab View - Code",style: TextStyle(color: Colors.white),),
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
