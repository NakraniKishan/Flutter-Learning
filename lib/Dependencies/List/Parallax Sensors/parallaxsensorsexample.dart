import 'package:flutter/material.dart';
import 'package:parallax_sensors_bg/parallax_sensors_bg.dart';
import 'package:trainingdemo/Dependencies/List/Parallax%20Sensors/parallaxsensorsexamplecode.dart';

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
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => parallaxsensorsexamplecode(),)
              );
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
              sensitivity: 5,
              image: AssetImage('assets/dependency/parallax/sky.jpg'),
              preventCrop: true,
              imageBlurValue: 1.5,
            ),
            Layer(
              sensitivity: 15,
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
