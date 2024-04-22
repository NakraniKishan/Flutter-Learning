import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:trainingdemo/Dependencies/List/Hex%20Color/hexcolorexamplecode.dart';

class hexcolorexample extends StatefulWidget {

  @override
  State<hexcolorexample> createState() => _hexcolorexampleState();
}

class _hexcolorexampleState extends State<hexcolorexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Hex Color",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => hexcolorexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(),
          Container(
            height: 200,
            width: 200,
            color: HexColor("#0174BE"),
            child: Center(
              child: Text("#0174BE"),
            ),
          )
        ],
      )
    );
  }
}
