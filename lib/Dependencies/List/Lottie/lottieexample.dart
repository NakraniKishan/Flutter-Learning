import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:trainingdemo/Dependencies/List/Lottie/lottieexamplecode.dart';

class lottieexample extends StatefulWidget {

  @override
  State<lottieexample> createState() => _lottieexampleState();
}

class _lottieexampleState extends State<lottieexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Lottie",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => lottieexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Place Lottie Image"),
            Lottie.asset("assets/dependency/lottie/loading.json"),
            Text("Width = 200, framerate = 30"),
            Lottie.asset("assets/dependency/lottie/password.json",width: 200,frameRate: FrameRate(30)),





          ],
        ),
      ),
    );
  }
}
