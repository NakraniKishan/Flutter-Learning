import 'package:flutter/material.dart';

import 'heroexamplecode.dart';

class heropageexample extends StatefulWidget {
  @override
  State<heropageexample> createState() => _heropageexampleState();
}

class _heropageexampleState extends State<heropageexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white,),
          title: Text("Hero-View",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.black,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => heroexamplecode(),
                ));
              },
              icon: Icon(Icons.code),
            )
          ],
        ),
        body: Hero(
          tag: "imageche",
            child: Image.network(
                "https://images.unsplash.com/photo-1698404327936-720a24d7d274?auto=format&fit=crop&q=80&w=1974&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")));
  }
}
