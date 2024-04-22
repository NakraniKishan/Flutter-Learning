import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class mediaqueryexamplecode extends StatefulWidget {

  @override
  State<mediaqueryexamplecode> createState() => _mediaqueryexamplecodeState();
}

class _mediaqueryexamplecodeState extends State<mediaqueryexamplecode> {
  String code = """
import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/Media%20Query/mediaqueryexamplecode.dart';

class mediaqueryexample extends StatefulWidget {

  @override
  State<mediaqueryexample> createState() => _mediaqueryexampleState();
}

class _mediaqueryexampleState extends State<mediaqueryexample> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    double? height1 = Scaffold.of(context).appBarMaxHeight;
    print(height1);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Media Query"),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => mediaqueryexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height-88,
            color: Colors.purpleAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/2,
                  height: MediaQuery.of(context).size.height/2-44,
                  color: Colors.red,
                ),
                Container(

                  width: MediaQuery.of(context).size.width/4,
                  height: MediaQuery.of(context).size.height/2-44,
                  color: Colors.blue,
                )
              ],
            )
          )
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
        title: Text("Media Query - Code",style: TextStyle(color: Colors.white),),
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
