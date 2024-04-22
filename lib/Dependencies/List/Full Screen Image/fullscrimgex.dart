import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';
import 'package:trainingdemo/Dependencies/List/Full%20Screen%20Image/fullscrimgexcode.dart';

class fullscrimgex extends StatefulWidget {

  @override
  State<fullscrimgex> createState() => _fullscrimgexState();
}

class _fullscrimgexState extends State<fullscrimgex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text(
          "Full Screen Image",style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => fullscrimgexcode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: Column(
        children: [
          FullScreenWidget(
            disposeLevel: DisposeLevel.Low,
            child: Container(
              width: 300,
              height: 300,
              child: Image.network("https://images.unsplash.com/photo-1696530626245-a60957372928?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1968&q=80",fit: BoxFit.cover),

            ),
          ),
          FullScreenWidget(
            disposeLevel: DisposeLevel.Low,
            backgroundIsTransparent: false,
            backgroundColor: Colors.grey,
            child: Container(
              width: 300,
              height: 300,
              child: Image.network("https://images.unsplash.com/photo-1696350865870-1bc760e347cd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80",fit: BoxFit.contain),

            ),
          ),
        ],
      ),
    );
  }
}
