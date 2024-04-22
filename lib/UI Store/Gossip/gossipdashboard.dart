import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:trainingdemo/UI%20Store/Gossip/gossipcallscreen.dart';
import 'package:trainingdemo/UI%20Store/Gossip/gossipchatscreen.dart';
import 'package:trainingdemo/UI%20Store/Gossip/gossipsetting.dart';
import 'package:trainingdemo/UI%20Store/Gossip/gossipstatusscreen.dart';

class gossipdashboard extends StatefulWidget {

  @override
  State<gossipdashboard> createState() => _gossipdashboardState();
}

class _gossipdashboardState extends State<gossipdashboard> with TickerProviderStateMixin {
  late TabController _tabcon;
  @override
  void initState() {
    _tabcon =  TabController(length: 4,initialIndex: 1, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white,),

          title: Text("Gossip",style: TextStyle(color: Colors.white),),
          bottom: TabBar(
            controller: _tabcon,
            indicatorColor: Colors.greenAccent,

            tabs: [
              Tab(
                child: Icon(CupertinoIcons.camera_fill,color: Colors.white),
              ),
              Tab(
                child: Text("CHATS",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              ),
              Tab(
                child: Text("STATUS",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              ),
              Tab(
                child: Text("CALLS",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              ),
            ],
          ),
          backgroundColor: HexColor("#1A374D"),
          actions: [
            PopupMenuButton(
              icon: Icon(Icons.more_vert),
              color: HexColor("#1A374D"),
              onSelected: (result) {
                if (result == 0) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => gossipsetting()));
                }
              },
              itemBuilder: (context) => [
                PopupMenuItem(child: Text("New Group", style: TextStyle(color: Colors.white),),),
                PopupMenuItem(child: Text("New broadcast", style: TextStyle(color: Colors.white),),),
                PopupMenuItem(child: Text("Linked Devices", style: TextStyle(color: Colors.white),),),
                PopupMenuItem(child: Text("Starred messages", style: TextStyle(color: Colors.white),),),
                PopupMenuItem(child: Text("Payments", style: TextStyle(color: Colors.white),),),
                PopupMenuItem( value: 0, child: Text("Settings", style: TextStyle(color: Colors.white),), ),
              ],),
          ],
        ),
        body: TabBarView(
          controller: _tabcon,
          children: [
            Center(
              child: Text("CAMERA",),
            ),
            gossipchatscreen(),
            gossipstatusscreen(),
            gossipcallscreen(),
          ],
        ),
      ),
    );
  }
  @override
  void dispose() {
    _tabcon.dispose();
    super.dispose();
  }
}
