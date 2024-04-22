import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/Page%20View/Pages/pageviewone.dart';
import 'package:trainingdemo/Widgets/List/Page%20View/Pages/pageviewthree.dart';
import 'package:trainingdemo/Widgets/List/Page%20View/Pages/pageviewtwo.dart';
import 'package:trainingdemo/Widgets/List/Page%20View/pageviewexamplecode.dart';

class pageviewexample extends StatefulWidget {

  @override
  State<pageviewexample> createState() => _pageviewexampleState();
}

class _pageviewexampleState extends State<pageviewexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Page View",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => pageviewexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: PageView(

        // scrollDirection: Axis.vertical,
        // reverse: true,

        children: [
          pageviewone(),
          pageviewtwo(),
          pageviewthree()
        ],
      )
    );
  }
}
