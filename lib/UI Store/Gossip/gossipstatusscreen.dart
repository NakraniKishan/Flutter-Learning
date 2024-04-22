import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:trainingdemo/UI%20Store/Gossip/gossipstoryviewscreen.dart';

class gossipstatusscreen extends StatefulWidget {

  @override
  State<gossipstatusscreen> createState() => _gossipstatusscreenState();
}

class _gossipstatusscreenState extends State<gossipstatusscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            //color: Colors.white,
            elevation: 0,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Stack(
                    children:[
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://media.istockphoto.com/vectors/default-avatar-profile-icon-vector-vector-id1337144146?b=1&k=20&m=1337144146&s=170667a&w=0&h=ys-RUZbXzQ-FQdLstHeWshI4ViJuEhyEa4AzQNQ0rFI="),
                      ),
                      Positioned(
                        //height: 220,
                        bottom: 4,
                        left: 40,
                        child: CircleAvatar(
                          maxRadius:10,
                          backgroundColor: HexColor("#1A374D"),

                          child: Icon(Icons.add, color: Colors.white,size: 15,),
                          // child: IconButton(
                          //   icon: Icon(Icons.add, color: Colors.white,size: 20),
                          // ),
                        ),
                      ),
                    ]
                ),
                title: Text(
                  "My Status",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Tap to add status update"),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Recent updates",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8.0),
              color: Colors.white,
              child: ListView(
                children: [
                  ListTile(
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => gossipstoryviewscreen(),)
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
                                  "https://images.unsplash.com/photo-1704168370831-b7f450dadeb0?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                            ),
                          ),

                        ]
                    ),
                    title: Text(
                      "Boy",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Today, 20:16 PM"),
                    // onTap: () => Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => StoryPageView())),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
