import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class slidableexamplecode extends StatefulWidget {

  @override
  State<slidableexamplecode> createState() => _slidableexamplecodeState();
}

class _slidableexamplecodeState extends State<slidableexamplecode> {
  String code = """
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:trainingdemo/Dependencies/List/Slidable/slidableexamplecode.dart';

class slidableexample extends StatefulWidget {

  @override
  State<slidableexample> createState() => _slidableexampleState();
}

class _slidableexampleState extends State<slidableexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Slidable",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => slidableexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(10),
          child: Column(
            children: [
              Slidable(
                child: ListTile(
                  title: Text("BehindMotion"),
                ),
                endActionPane: ActionPane(
                  motion: BehindMotion(),
                  children: [
                    SlidableAction(
                      backgroundColor: Colors.red,
                      onPressed: (context) {},
                      icon: Icons.add,
                      flex: 2,
                    ),
                    SlidableAction(
                      backgroundColor: Colors.green,
                      onPressed: (context) {},
                      icon: Icons.archive,
                      flex: 2,
                    )
                  ],
                ),
                startActionPane: ActionPane(
                  motion: BehindMotion(),
                  children: [
                    SlidableAction(
                      backgroundColor: Colors.blue,
                      onPressed: (context) {},
                      icon: Icons.send,
                      flex: 2,
                      label: "Send",
                    ),
                    SlidableAction(
                      backgroundColor: Colors.yellow,
                      onPressed: (context) {},
                      icon: Icons.download,
                      flex: 2,
                      label: "Download",
                    )
                  ],
                ),
              ),
          
          
              Slidable(
                child: ListTile(
                  title: Text("DrawerMotion"),
                ),
                endActionPane: ActionPane(
                  motion: DrawerMotion(),
                  children: [
                    SlidableAction(
                      backgroundColor: Colors.red,
                      onPressed: (context) {},
                      icon: Icons.add,
                      flex: 2,
                    ),
                    SlidableAction(
                      backgroundColor: Colors.green,
                      onPressed: (context) {},
                      icon: Icons.archive,
                      flex: 2,
                    )
                  ],
                ),
                startActionPane: ActionPane(
                  motion: DrawerMotion(),
                  children: [
                    SlidableAction(
                      backgroundColor: Colors.blue,
                      onPressed: (context) {},
                      icon: Icons.send,
                      flex: 2,
                      label: "Send",
                    ),
                    SlidableAction(
                      backgroundColor: Colors.yellow,
                      onPressed: (context) {},
                      icon: Icons.download,
                      flex: 2,
                      label: "Download",
                    )
                  ],
                ),
              ),
          
          
              Slidable(
                child: ListTile(
                  title: Text("ScrollMotion"),
                ),
                endActionPane: ActionPane(
                  motion: ScrollMotion(),
                  children: [
                    SlidableAction(
                      backgroundColor: Colors.red,
                      onPressed: (context) {},
                      icon: Icons.add,
                      flex: 2,
                    ),
                    SlidableAction(
                      backgroundColor: Colors.green,
                      onPressed: (context) {},
                      icon: Icons.archive,
                      flex: 2,
                    )
                  ],
                ),
                startActionPane: ActionPane(
                  motion: ScrollMotion(),
                  children: [
                    SlidableAction(
                      backgroundColor: Colors.blue,
                      onPressed: (context) {},
                      icon: Icons.send,
                      flex: 2,
                      label: "Send",
                    ),
                    SlidableAction(
                      backgroundColor: Colors.yellow,
                      onPressed: (context) {},
                      icon: Icons.download,
                      flex: 2,
                      label: "Download",
                    )
                  ],
                ),
              ),
              Slidable(
                child: ListTile(
                  title: Text("StretchMotion"),
                ),
                endActionPane: ActionPane(
                  motion: StretchMotion(),
                  children: [
                    SlidableAction(
                      backgroundColor: Colors.red,
                      onPressed: (context) {},
                      icon: Icons.add,
                      flex: 2,
                    ),
                    SlidableAction(
                      backgroundColor: Colors.green,
                      onPressed: (context) {},
                      icon: Icons.archive,
                      flex: 2,
                    )
                  ],
                ),
                startActionPane: ActionPane(
                  motion: StretchMotion(),
                  children: [
                    SlidableAction(
                      backgroundColor: Colors.blue,
                      onPressed: (context) {},
                      icon: Icons.send,
                      flex: 2,
                      label: "Send",
                    ),
                    SlidableAction(
                      backgroundColor: Colors.yellow,
                      onPressed: (context) {},
                      icon: Icons.download,
                      flex: 2,
                      label: "Download",
                    )
                  ],
                ),
              ),
              Slidable(
                child: ListTile(
                  title: Text("InversedDrawerMotion"),
                ),
                // key: ValueKey(0),
                endActionPane: ActionPane(
                  motion: InversedDrawerMotion(),
                  // dismissible: DismissiblePane(closeOnCancel: true, onDismissed: () {return null;  },),
                  children: [
                    SlidableAction(
                      backgroundColor: Colors.red,
                      onPressed: (context) {},
                      icon: Icons.add,
                      flex: 2,
                    ),
                    SlidableAction(
                      backgroundColor: Colors.green,
                      onPressed: (context) {},
                      icon: Icons.archive,
                      flex: 2,
                    )
                  ],
                ),
                startActionPane: ActionPane(
                  motion: InversedDrawerMotion(),
                  children: [
                    SlidableAction(
                      backgroundColor: Colors.blue,
                      onPressed: (context) {},
                      icon: Icons.send,
                      flex: 2,
                      label: "Send",
          
                    ),
                    SlidableAction(
                      backgroundColor: Colors.yellow,
                      onPressed: (context) {},
                      icon: Icons.download,
                      flex: 2,
                      label: "Download",
                    )
                  ],
                ),
              ),
            ],
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
        title: Text("Slidable - Code",style: TextStyle(color: Colors.white),),
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
