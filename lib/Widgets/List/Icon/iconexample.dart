import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/Icon/iconexamplecode.dart';

class iconexample extends StatefulWidget {

  @override
  State<iconexample> createState() => _iconexampleState();
}

class _iconexampleState extends State<iconexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Icon",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => iconexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: Center(
        child: Icon(Icons.image,
          size: 65,
          color: Colors.black,
        ),
      ),
    );
  }
}
