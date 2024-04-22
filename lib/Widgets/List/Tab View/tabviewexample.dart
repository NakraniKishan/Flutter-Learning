import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/Tab%20View/tabviewexamplecode.dart';

class tabviewexample extends StatefulWidget {

  @override
  State<tabviewexample> createState() => _tabviewexampleState();
}

class _tabviewexampleState extends State<tabviewexample> with TickerProviderStateMixin {
  late TabController _tabcon;
  @override
  void initState() {
    _tabcon =  TabController(length: 3,initialIndex: 1, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white,),
          title: Text("Tab View",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.black,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => tabviewexamplecode(),)
                );
              },
              icon: Icon(Icons.code),
            )
          ],
          bottom: TabBar(
            controller: _tabcon,
            indicatorColor: Colors.yellow,

            tabs: [

              Tab(
                child: Text("Post",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              ),
              Tab(
                child: Text("Followers",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              ),
              Tab(
                child: Text("Following",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabcon,
          children: [
            Center(
              child: Text("Post",),
            ),
            Center(
              child: Text("Followers",),
            ),
            Center(
              child: Text("Following",),
            ),
          ],
        ),
      ),
    );
  }
}
