import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class gossipcallinfoscreen extends StatefulWidget {

  @override
  State<gossipcallinfoscreen> createState() => _gossipcallinfoscreenState();
}

class _gossipcallinfoscreenState extends State<gossipcallinfoscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        backgroundColor: HexColor("#1A374D"),
        title: Text("Call Info",style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [


          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://images.pexels.com/photos/716411/pexels-photo-716411.jpeg?auto=compress&cs=tinysrgb&w=1600"),
              maxRadius: 25,
            ),
            title: Text("Niraj Nakrani"),

            subtitle: Text("Available"),

          ),


          Divider(
            thickness: 1,
          ),
          Row(
            children: [
              SizedBox(
                width: 80,
              ),
              Text("July 22"),
            ],
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(CupertinoIcons.phone_arrow_down_left, color: Colors.red,),
              backgroundColor: Colors.transparent,
              maxRadius: 25,
            ),


            trailing: Text("Not answered"),
            title: Text("Incoming"),
            subtitle: Text("3:02 PM"),

          ),

        ],
      ),
    );
  }
}
