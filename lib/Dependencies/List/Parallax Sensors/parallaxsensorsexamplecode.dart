import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class parallaxsensorsexamplecode extends StatefulWidget {

  @override
  State<parallaxsensorsexamplecode> createState() => _parallaxsensorsexamplecodeState();
}

class _parallaxsensorsexamplecodeState extends State<parallaxsensorsexamplecode> {

  String code = """

import 'package:flutter/material.dart';
import 'package:parallax_sensors_bg/parallax_sensors_bg.dart';

class parallaxsensorsexample extends StatefulWidget {

  @override
  State<parallaxsensorsexample> createState() => _parallaxsensorsexampleState();
}

class _parallaxsensorsexampleState extends State<parallaxsensorsexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Parallax Effects",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              // Navigator.of(context).push(
              //     MaterialPageRoute(builder: (context) => slidableexamplecode(),)
              // );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
    // body: Column(
    //   children: [
    //     Image.asset("assets/dependency/parallax/sky.jpg"),
    //   ],
    // ),
      body: Parallax(
          sensor: ParallaxSensor.accelerometer,
          layers: [

            Layer(
              sensitivity: 1,
              image: AssetImage('assets/dependency/parallax/sky.jpg'),
              preventCrop: true,
              imageBlurValue: 1.5,
            ),
            Layer(
              sensitivity: 7,
              image: AssetImage('assets/dependency/parallax/earth.png'),
              imageHeight: 500,
              imageFit: BoxFit.fitWidth,
            ),
            // Layer(
            //   sensitivity: 12,
            //   child: Text('Topmost layer'),
            // ),
          ],
          // child: Text('Page body here'),
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
        title: Text("Parallax Effect - Code",style: TextStyle(color: Colors.white),),
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
