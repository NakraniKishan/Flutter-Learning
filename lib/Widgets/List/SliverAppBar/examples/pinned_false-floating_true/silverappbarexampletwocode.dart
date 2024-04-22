import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class silverappbarexampletwocode extends StatefulWidget {

  @override
  State<silverappbarexampletwocode> createState() => _silverappbarexampletwocodeState();
}

class _silverappbarexampletwocodeState extends State<silverappbarexampletwocode> {
  String code = """

import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/SliverAppBar/examples/pinned_false-floating_true/silverappbarexampletwocode.dart';

class silverappbarexampletwo extends StatefulWidget {

  @override
  State<silverappbarexampletwo> createState() => _silverappbarexampletwoState();
}

class _silverappbarexampletwoState extends State<silverappbarexampletwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Silver AppBar"),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => silverappbarexampletwocode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            floating: true,

            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
                title: Text("SilverAppbar"),
                background: Image.network("https://images.unsplash.com/photo-1695068276999-45f7079df317?auto=format&fit=crop&q=80&w=2128&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",fit: BoxFit.fill,)
            ),
            backgroundColor: Colors.black,
          ),


          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (_, int index) {
                return Card(
                  margin: const EdgeInsets.all(15),
                  child: Container(
                    color: Colors.blue[100 * (index % 9 + 1)],
                    height: 80,
                    alignment: Alignment.center,
                    child: Text(
                      "Item",
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
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
        title: Text("SilverAppbar - Code",style: TextStyle(color: Colors.white),),
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
