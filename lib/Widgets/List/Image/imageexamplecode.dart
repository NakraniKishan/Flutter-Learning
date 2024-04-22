import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class imageexamplecode extends StatefulWidget {

  @override
  State<imageexamplecode> createState() => _imageexamplecodeState();
}

class _imageexamplecodeState extends State<imageexamplecode> {
  String code = """
import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/Image/imageexamplecode.dart';

class imageexample extends StatefulWidget {

  @override
  State<imageexample> createState() => _imageexampleState();
}

class _imageexampleState extends State<imageexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => imageexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Create asset folder to store image in your project ",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Open pubspec.yaml file and make entry of your asset image with proper location.  ",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Do pubget in same file or in terminal. After than you can use image in your project. ",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Asset Image"),
            Image.asset("assets/Widgets/List/Image/image.jpg"),
            Image.asset("assets/Widgets/List/Image/image.jpg",height: 100),
            Image.asset("assets/Widgets/List/Image/image.jpg",width:100,),
            Image.asset("assets/Widgets/List/Image/image.jpg",colorBlendMode: BlendMode.darken,color: Colors.red.withOpacity(0.5),),
            Image.asset("assets/Widgets/List/Image/image.jpg",color: Colors.pink.withOpacity(0.2)),
            Container(
              height: 200,
              width: 100,
              color: Colors.red,
              ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              width: 100,
              color: Colors.red,
              child: Image.asset("assets/Widgets/List/Image/image.jpg",fit: BoxFit.contain,),
            ),

            Container(
              height: 200,
              width: 100,
              color: Colors.red,
              child: Image.asset("assets/Widgets/List/Image/image.jpg",fit: BoxFit.cover),
            ),
            Container(
              height: 200,
              width: 100,
              color: Colors.red,
              child: Image.asset("assets/Widgets/List/Image/image.jpg",fit: BoxFit.contain,repeat: ImageRepeat.repeatY,),
            ),
            Text("Network Image - Same Properties can apply to network image"),
            Image.network("https://images.unsplash.com/photo-1682695797873-aa4cb6edd613?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",),

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
        title: Text("Image - Code",style: TextStyle(color: Colors.white),),
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
