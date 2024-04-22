import 'package:flutter/material.dart';
import 'package:quick_actions/quick_actions.dart';
import 'package:trainingdemo/Dependencies/dependencylist.dart';
import 'package:trainingdemo/UI%20Store/uistorelist.dart';
import 'package:trainingdemo/Widgets/widgetslist.dart';

class dashboard extends StatefulWidget {

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  final QuickActions quickActions = QuickActions();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    quickActions.setShortcutItems([
      ShortcutItem(
        type: 'widgetlist',
        localizedTitle: 'Widget List',
        icon: 'widget',
      ),
      ShortcutItem(
          type: 'dependencylist',
          localizedTitle: 'Dependency List',
          icon: 'dependency'),
    ]);
    quickActions.initialize((type) {
      if(type=='widgetlist'){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => widgetslist(),)
        );
      }
      else if(type == 'dependencylist')
        {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => dependencylist(),)
          );
        }
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          surfaceTintColor: Colors.grey,
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profileaavtar.png"),
                      radius: 50.0,
                    ),
                    Text("Flutter Developer", style: TextStyle(color: Colors.white,fontSize: 18),)
                  ],
                ),
              ),
            ],
          ),
        ),
      
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white,),
          backgroundColor: Colors.black,
          title: Text("Flutter Learning",style: TextStyle(color: Colors.white),),
          centerTitle: true,
          // actions: [
          //   PopupMenuButton(itemBuilder: (context) => [
          //     PopupMenuItem(child: Text("Bookmarks", style: TextStyle(color: Colors.white),),)
          //   ],
          //       color: Colors.black),
          // ],
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 10,left: 10, right: 10),
          child: Column(
            children: [
              // SizedBox(
              //   height: 10,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Tutorial", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                ],
              ),
      
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => widgetslist(),)
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          //color: Colors.blue,
                          image: DecorationImage(
                            //opacity: 0.8,
                            image: AssetImage("assets/images/widgetspic.jpg"),
                            // image: NetworkImage("https://images.unsplash.com/photo-1601836210991-739771506cc9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",),
                            fit: BoxFit.cover,
                          ),
      
                        ),
                        child: Center(
                          child: Text("Widgets", style: TextStyle(color: Colors.white,fontSize: 20),),
                        ),
                        width: 120,
                        height: 120,
                      ),
                    ),
      
                    SizedBox(
                      width: 10,
                    ),
      
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => dependencylist(),)
                        );
                      },
                      child: Container(
                        width: 150,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          //color: Colors.blue,
                          image: DecorationImage(
                            //opacity: 0.8,
                            image: AssetImage("assets/images/dependenciespic.jpeg"),
                            // image: NetworkImage("https://images.pexels.com/photos/163143/sackcloth-sackcloth-textured-laptop-ipad-163143.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",),
                            fit: BoxFit.cover,
      
                          ),
                        ),
                        child: Center(
                          child: Text("Dependencies", style: TextStyle(color: Colors.white,fontSize: 20),),
                        ),
      
      
                      ),
                    ),
      
                    SizedBox(
                      width: 10,
                    ),
      
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => uistorelist(),)
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          //color: Colors.blue,
                          image: DecorationImage(
                            //opacity: 0.8,
                            image: AssetImage("assets/images/uistorepic.jpeg"),
                            // image: NetworkImage("https://images.pexels.com/photos/2117937/pexels-photo-2117937.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Center(
                          child: Text("UI Store", style: TextStyle(color: Colors.white,fontSize: 20),),
                        ),
                        width: 120,
                        height: 120,
      
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 10,
              // ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     // mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     children: [
              //       GestureDetector(
              //         onTap: (){
              //           Navigator.of(context).push(
              //               MaterialPageRoute(builder: (context) => widgetslist(),)
              //           );
              //         },
              //         child: Container(
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(15),
              //             //color: Colors.blue,
              //             image: DecorationImage(
              //               //opacity: 0.8,
              //               image: NetworkImage("https://images.unsplash.com/photo-1601836210991-739771506cc9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",),
              //               fit: BoxFit.cover,
              //             ),
              //
              //           ),
              //           child: Center(
              //             child: Text("Widgets", style: TextStyle(color: Colors.white,fontSize: 20),),
              //           ),
              //           width: 120,
              //           height: 120,
              //         ),
              //       ),
              //
              //       SizedBox(
              //         width: 10,
              //       ),
              //
              //       GestureDetector(
              //         onTap: (){
              //           Navigator.of(context).push(
              //               MaterialPageRoute(builder: (context) => dependencylisttwo(),)
              //           );
              //         },
              //         child: Container(
              //           width: 150,
              //           height: 120,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(15),
              //             //color: Colors.blue,
              //             image: DecorationImage(
              //               //opacity: 0.8,
              //               image: NetworkImage("https://images.unsplash.com/photo-1522125670776-3c7abb882bc2?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",),
              //               fit: BoxFit.cover,
              //
              //             ),
              //           ),
              //           child: Center(
              //             child: Text("Dependencies", style: TextStyle(color: Colors.white,fontSize: 20),),
              //           ),
              //
              //
              //         ),
              //       ),
              //
              //       SizedBox(
              //         width: 10,
              //       ),
              //
              //       GestureDetector(
              //         onTap: (){
              //           Navigator.of(context).push(
              //               MaterialPageRoute(builder: (context) => uistorelist(),)
              //           );
              //         },
              //         child: Container(
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(15),
              //             //color: Colors.blue,
              //             image: DecorationImage(
              //               //opacity: 0.8,
              //               image: NetworkImage("https://images.pexels.com/photos/2117937/pexels-photo-2117937.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",),
              //               fit: BoxFit.fill,
              //             ),
              //           ),
              //           child: Center(
              //             child: Text("UI Store", style: TextStyle(color: Colors.white,fontSize: 20),),
              //           ),
              //           width: 120,
              //           height: 120,
              //
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
      
            ],
          ),
        ),
      ),
    );
  }
}
