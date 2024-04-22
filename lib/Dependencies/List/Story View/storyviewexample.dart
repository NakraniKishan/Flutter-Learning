import 'package:flutter/material.dart';
import 'package:trainingdemo/Dependencies/List/Story%20View/storyviewexamplecode.dart';
import 'package:trainingdemo/Dependencies/List/Story%20View/storyviewscreen.dart';
import 'package:trainingdemo/Dependencies/List/Story%20View/storyviewscreencode.dart';

class storyviewexample extends StatefulWidget {

  @override
  State<storyviewexample> createState() => _storyviewexampleState();
}

class _storyviewexampleState extends State<storyviewexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Story View",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => storyviewexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: Column(
        children: [
          ListTile(
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => storyviewscreen(),)
              );
            },
            leading: Stack(
                children:[
                  CircleAvatar(
                    maxRadius: 30,
                  ),
                  Positioned(
                    left: 5,
                    bottom: 3,
                    child: CircleAvatar(

                      maxRadius: 25,
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/12623852/pexels-photo-12623852.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    ),
                  ),

                ]
            ),
            title: Text(
              "Boy",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Today, 20:16 PM"),

          ),

          MaterialButton(
            onPressed: () async{

                // Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => storyviewscreencode(),)
                );
              },

            child: Text("Story Page Code"),
            color: Colors.black,
            textColor: Colors.white,
          )

        ],
      ),
    );
  }
}
