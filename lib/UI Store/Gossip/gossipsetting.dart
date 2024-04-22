import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:trainingdemo/UI%20Store/Gossip/gossipprofilesetting.dart';

class gossipsetting extends StatefulWidget {

  @override
  State<gossipsetting> createState() => _gossipsettingState();
}

class _gossipsettingState extends State<gossipsetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        backgroundColor: HexColor("#1A374D"),
        title: Text("Setting",style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => gossipprofilesetting(),)
              );
            },
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://images.pexels.com/photos/716411/pexels-photo-716411.jpeg?auto=compress&cs=tinysrgb&w=1600"),
              maxRadius: 25,
            ),
            title: Text("Parth Patel"),
            subtitle: Text("Available"),
            trailing: Icon(Icons.qr_code),
          ),
          Divider(
            thickness: 1,
          ),
          ListTile(
            leading: CircleAvatar(
              // backgroundImage: NetworkImage("https://images.pexels.com/photos/716411/pexels-photo-716411.jpeg?auto=compress&cs=tinysrgb&w=1600"),
              child: Icon(Icons.key, color: Colors.grey),
              backgroundColor: Colors.transparent,
            ),
            title: Text("Account"),
            subtitle: Text("Privacy, Security, Change Number"),
          ),
          ListTile(
            leading: CircleAvatar(
              // backgroundImage: NetworkImage("https://images.pexels.com/photos/716411/pexels-photo-716411.jpeg?auto=compress&cs=tinysrgb&w=1600"),
              child: Icon(Icons.chat, color: Colors.grey),
              backgroundColor: Colors.transparent,
            ),
            title: Text("Chats"),
            subtitle: Text("Theme, wallpaper, chat history"),
          ),
          ListTile(
            leading: CircleAvatar(
              // backgroundImage: NetworkImage("https://images.pexels.com/photos/716411/pexels-photo-716411.jpeg?auto=compress&cs=tinysrgb&w=1600"),
              child: Icon(Icons.notifications, color: Colors.grey),
              backgroundColor: Colors.transparent,
            ),
            title: Text("Notification"),
            subtitle: Text("Message, group & call tones"),
          ),
          ListTile(
            leading: CircleAvatar(
              // backgroundImage: NetworkImage("https://images.pexels.com/photos/716411/pexels-photo-716411.jpeg?auto=compress&cs=tinysrgb&w=1600"),
              child: Icon(Icons.storage, color: Colors.grey),
              backgroundColor: Colors.transparent,
            ),
            title: Text("Storage And Data"),
            subtitle: Text("Network Usage, auto-download"),
          ),

          ListTile(
            leading: CircleAvatar(
              // backgroundImage: NetworkImage("https://images.pexels.com/photos/716411/pexels-photo-716411.jpeg?auto=compress&cs=tinysrgb&w=1600"),
              child: Icon(Icons.help, color: Colors.grey),
              backgroundColor: Colors.transparent,
            ),
            title: Text("Help"),
            subtitle: Text("Help center, contact us, privacy, policy"),
          ),
          ListTile(
            leading: CircleAvatar(
              // backgroundImage: NetworkImage("https://images.pexels.com/photos/716411/pexels-photo-716411.jpeg?auto=compress&cs=tinysrgb&w=1600"),
              child: Icon(Icons.people, color: Colors.grey),
              backgroundColor: Colors.transparent,
            ),
            title: Text("Invite a friend"),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text("from"),
          ),
          Center(
            child: Text("Gossip", style: TextStyle(fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    );
  }
}
