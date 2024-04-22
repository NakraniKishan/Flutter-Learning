import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/Position/positionexamplecode.dart';

class positionexample extends StatefulWidget {

  @override
  State<positionexample> createState() => _positionexampleState();
}

class _positionexampleState extends State<positionexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Position",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => positionexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Row(),
              Container(
                width: 300,
                height: 300,
                color: Colors.blue,
              ),
              Positioned(
                left: 50,
                bottom: 50,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.green,

                ),
              ),
              Positioned(
                left: 100,
                bottom: 100,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              )
            ],
          )
        ],
      )
    );
  }
}
