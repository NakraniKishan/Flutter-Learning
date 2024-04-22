import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/Media%20Query/mediaqueryexamplecode.dart';

class mediaqueryexample extends StatefulWidget {

  @override
  State<mediaqueryexample> createState() => _mediaqueryexampleState();
}

class _mediaqueryexampleState extends State<mediaqueryexample> {
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Media Query",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => mediaqueryexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height-88,
            color: Colors.purpleAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/2,
                  height: MediaQuery.of(context).size.height/2-44,
                  color: Colors.red,
                ),
                Container(

                  width: MediaQuery.of(context).size.width/4,
                  height: MediaQuery.of(context).size.height/2-44,
                  color: Colors.blue,
                )
              ],
            )
          )
        ],
      ),
    );
  }
}
