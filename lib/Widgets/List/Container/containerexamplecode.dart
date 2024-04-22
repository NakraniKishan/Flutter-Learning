import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class containerexamplecode extends StatefulWidget {

  @override
  State<containerexamplecode> createState() => _containerexamplecodeState();
}

class _containerexamplecodeState extends State<containerexamplecode> {

  String code = """
import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/Container/containerexamplecode.dart';

class containerexample extends StatefulWidget {

  @override
  State<containerexample> createState() => _containerexampleState();
}

class _containerexampleState extends State<containerexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => containerexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [

              ],
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              margin: EdgeInsets.all(10),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: Text("Hello World"),
              padding: EdgeInsets.all(10),
            ),
            SizedBox(
              height: 10,
            ),
            Container(

              color: Colors.red,
              child: Text("Hello World"),
            ),
            SizedBox(
              height: 10,
            ),

            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: Text("Hello World"),
              alignment: Alignment.topLeft,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: Text("Hello World"),
              alignment: Alignment.topCenter,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: Text("Hello World"),
              alignment: Alignment.topLeft,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: Text("Hello World"),
              alignment: Alignment.centerLeft,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: Text("Hello World"),
              alignment: Alignment.center,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: Text("Hello World"),
              alignment: Alignment.centerRight,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: Text("Hello World"),
              alignment: Alignment.bottomLeft,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: Text("Hello World"),
              alignment: Alignment.bottomCenter,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: Text("Hello World"),
              alignment: Alignment.bottomRight,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: 100,

              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text("Hello World"),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: 100,

              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),

                border: Border.all(color: Colors.black, width: 3),
              ),
              child: Text("Hello World"),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: 100,

              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(color: Colors.blue,offset: Offset(10,10),blurRadius: 2,spreadRadius: 5,)
                   // BoxShadow(color: Colors.green, offset: new Offset(6.0, 6.0),),
                ],
                border: Border.all(color: Colors.black, width: 3),
              ),
              child: Center(child: Text("Hello World")),
            ),

            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 100,

              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [Colors.green, Color.fromARGB(255, 29, 221, 163)],
                ),
                boxShadow: [

                  BoxShadow(color: Colors.blue,offset: Offset(10,10),blurRadius: 2,spreadRadius: 5,)
                  // BoxShadow(color: Colors.green, offset: new Offset(6.0, 6.0),),
                ],
                border: Border.all(color: Colors.black, width: 3),

              ),
              child: Center(child: Text("Hello World")),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 100,

              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(

                  colors: [Colors.orange, Colors.white, Colors.green],
                ),
                boxShadow: [

                  BoxShadow(color: Colors.blue,offset: Offset(10,10),blurRadius: 2,spreadRadius: 5,)
                  // BoxShadow(color: Colors.green, offset: new Offset(6.0, 6.0),),
                ],
                border: Border.all(color: Colors.black, width: 3),

              ),
              child: Center(child: Text("Hello World")),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 100,

              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.orange, Colors.white, Colors.green],
                ),
                boxShadow: [

                  BoxShadow(color: Colors.blue,offset: Offset(10,10),blurRadius: 2,spreadRadius: 5,)
                  // BoxShadow(color: Colors.green, offset: new Offset(6.0, 6.0),),
                ],
                border: Border.all(color: Colors.black, width: 3),

              ),
              child: Center(child: Text("Hello World")),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 100,

              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.orange, Colors.white, Colors.green],
                ),
                boxShadow: [

                  BoxShadow(color: Colors.blue,offset: Offset(10,10),blurRadius: 2,spreadRadius: 5,)
                  // BoxShadow(color: Colors.green, offset: new Offset(6.0, 6.0),),
                ],
                border: Border.all(color: Colors.black, width: 3),

              ),
              child: Center(child: Text("LinearGradient")),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 100,

              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
                gradient: RadialGradient(
                  colors: [Colors.orange, Colors.white, Colors.green],
                ),
                boxShadow: [

                  BoxShadow(color: Colors.blue,offset: Offset(10,10),blurRadius: 2,spreadRadius: 5,)
                  // BoxShadow(color: Colors.green, offset: new Offset(6.0, 6.0),),
                ],
                border: Border.all(color: Colors.black, width: 3),

              ),
              child: Center(child: Text("RadialGradient")),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 100,

              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
                gradient: RadialGradient(
                  radius: 0.2,
                  colors: [Colors.orange, Colors.white, Colors.green],
                ),
                boxShadow: [

                  BoxShadow(color: Colors.blue,offset: Offset(10,10),blurRadius: 2,spreadRadius: 5,)
                  // BoxShadow(color: Colors.green, offset: new Offset(6.0, 6.0),),
                ],
                border: Border.all(color: Colors.black, width: 3),

              ),
              child: Center(child: Text("RadialGradient")),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 100,

              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
                gradient: RadialGradient(
                  radius: 0.5,
                  center: Alignment.bottomCenter,
                  colors: [Colors.orange, Colors.white, Colors.green],
                ),
                boxShadow: [

                  BoxShadow(color: Colors.blue,offset: Offset(10,10),blurRadius: 2,spreadRadius: 5,)
                  // BoxShadow(color: Colors.green, offset: new Offset(6.0, 6.0),),
                ],
                border: Border.all(color: Colors.black, width: 3),

              ),
              child: Center(child: Text("RadialGradient")),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 100,

              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
                gradient: RadialGradient(
                  radius: 0.9,
                  center: Alignment.topRight,
                  colors: [Colors.orange, Colors.white, Colors.green],
                ),
                boxShadow: [

                  BoxShadow(color: Colors.blue,offset: Offset(10,10),blurRadius: 2,spreadRadius: 5,)
                  // BoxShadow(color: Colors.green, offset: new Offset(6.0, 6.0),),
                ],
                border: Border.all(color: Colors.black, width: 3),

              ),
              child: Center(child: Text("RadialGradient")),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 100,

              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
                gradient: SweepGradient(
                  startAngle: 1,
                  endAngle: 5,
                  colors: [Colors.orange, Colors.white, Colors.green],
                ),
                boxShadow: [

                  BoxShadow(color: Colors.blue,offset: Offset(10,10),blurRadius: 2,spreadRadius: 5,)
                  // BoxShadow(color: Colors.green, offset: new Offset(6.0, 6.0),),
                ],
                border: Border.all(color: Colors.black, width: 3),

              ),
              child: Center(child: Text("SweepGradient")),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 100,

              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: AssetImage("assets/Widgets/List/ListTile/image1.jpg")),
                gradient: LinearGradient(
                  colors: [Colors.orange, Colors.white, Colors.green],
                ),
                boxShadow: [

                  BoxShadow(color: Colors.blue,offset: Offset(10,10),blurRadius: 2,spreadRadius: 5,)
                  // BoxShadow(color: Colors.green, offset: new Offset(6.0, 6.0),),
                ],
                border: Border.all(color: Colors.black, width: 3),

              ),
              child: Center(child: Text("Hello World")),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 100,

              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: AssetImage("assets/Widgets/List/ListTile/image1.jpg",),fit: BoxFit.cover),
                gradient: LinearGradient(
                  colors: [Colors.green, Colors.red],
                ),
                boxShadow: [

                  BoxShadow(color: Colors.blue,offset: Offset(10,10),blurRadius: 2,spreadRadius: 5,)
                  // BoxShadow(color: Colors.green, offset: new Offset(6.0, 6.0),),
                ],
                border: Border.all(color: Colors.black, width: 3),

              ),
              child: Center(child: Text("Hello World")),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 100,

              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),

                image: DecorationImage(image: AssetImage("assets/Widgets/List/ListTile/image1.jpg",),fit: BoxFit.cover),
                gradient: LinearGradient(
                  colors: [Colors.green, Colors.red],
                ),
                boxShadow: [

                  BoxShadow(color: Colors.blue,offset: Offset(10,10),blurRadius: 2,spreadRadius: 5,)
                  // BoxShadow(color: Colors.green, offset: new Offset(6.0, 6.0),),
                ],
                border: Border.all(color: Colors.black, width: 3),

              ),
              child: Center(child: Text("Hello World")),
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
        title: Text("Container - Code",style: TextStyle(color: Colors.white),),
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
