import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:trainingdemo/Dependencies/List/Wave/waveeffectexamplecode.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class waveeffectexample extends StatefulWidget {

  @override
  State<waveeffectexample> createState() => _waveeffectexampleState();
}

class _waveeffectexampleState extends State<waveeffectexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Wave",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => waveeffectexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
        elevation: 0,

        flexibleSpace: Container(
          height: 100,
          width: double.infinity,
          child: WaveWidget(
            config: CustomConfig(
              colors: [
                Colors.white70,
                Colors.white54,
                Colors.white30,
                Colors.white24,
              ],
              // colors: [
              //   Colors.black87,
              //   Colors.black54,
              //   Colors.black38,
              //   Colors.black26,
              // ],
              durations: [35000, 19440, 10800, 6000],
              heightPercentages: [0.85, 0.80, 0.75, 0.70],
            ),
            // backgroundColor: HexColor("#00416A"),
            backgroundColor: Colors.black,
            size: Size(double.infinity, double.infinity),
            waveAmplitude: 0,
            heightPercentage: 0.8,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Wave Effect"),






          ],
        ),
      ),
    );
  }
}
