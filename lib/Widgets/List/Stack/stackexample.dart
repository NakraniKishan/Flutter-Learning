import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/Stack/stackexamplecode.dart';

class stackexample extends StatefulWidget {

  @override
  State<stackexample> createState() => _stackexampleState();
}

class _stackexampleState extends State<stackexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Stack",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => stackexamplecode(),)
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
              Container(
                width: 200,
                height: 300,
                color: Colors.orange,
              ),
              Container(
                width: 300,
                height: 100,
                color: Colors.blue,
              ),
              Container(
                width: 100,
                height: 200,
                color: Colors.green,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),

          Stack(
            children: [

              Container(
                width: 200,
                height: 300,
                color: Colors.orange,
              ),

              Container(
                width: 100,
                height: 200,
                color: Colors.green,
              ),
              Container(
                width: 300,
                height: 100,
                color: Colors.blue,
              ),
            ],
          ),


        ],
      )
    );
  }
}
