import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class gossipprofilesetting extends StatefulWidget {

  @override
  State<gossipprofilesetting> createState() => _gossipprofilesettingState();
}

class _gossipprofilesettingState extends State<gossipprofilesetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        backgroundColor: HexColor("#1A374D"),
        title: Text("Profile",style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(

                children: [
                  CircleAvatar(
                    maxRadius: 80,
                    backgroundImage: NetworkImage("https://images.pexels.com/photos/716411/pexels-photo-716411.jpeg?auto=compress&cs=tinysrgb&w=1600"),
                  ),
                  Positioned(
                    //height: 220,
                    bottom: 5,
                    left: 110,
                    child: CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: HexColor("#1A374D"),
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.camera_alt, color: Colors.white,),
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
          SizedBox(
            height: 40,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Himanshu Mistry"),
            subtitle: Text("This is not your username or pin. This name will be visible to your Gossip contacts."),
            trailing: Icon(Icons.edit),
          ),
          Divider(
            thickness: 1,
          ),
          ListTile(
            leading: Icon(Icons.info_outline_rounded),
            title: Text("Available"),
            subtitle: Text("About"),
            trailing: Icon(Icons.edit),
          ),
          Divider(
            thickness: 1,

          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text("Phone"),
            subtitle: Text("+91 7573062210"),

          ),



        ],
      ),
    );
  }
}
