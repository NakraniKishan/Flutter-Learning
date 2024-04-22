import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:trainingdemo/UI%20Store/Job%20Aware/jajobdetail.dart';

class janotification extends StatefulWidget {

  @override
  State<janotification> createState() => _janotificationState();
}

class _janotificationState extends State<janotification> {
  var _sckey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _sckey,
      appBar: AppBar(
        title: Text("Notification", style: TextStyle(color: HexColor("1458AD"),),),
        //centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: HexColor("#1458AD"),),
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height-88,
                child: ListView(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Image.asset(
                          "assets/UIStore/images/airbnb.png",
                        ),
                      ),
                      title: Text("You are been selected by the Airbnb company."),
                      subtitle: Text("17:30"),
                      trailing: Image.asset("assets/UIStore/images/delete.png", height: 20,),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Image.asset(
                          "assets/UIStore/images/twitter.png",
                        ),
                      ),
                      title: Text("You are invited for the interview by Twitter."),
                      subtitle: Text("17:30"),
                      trailing: Image.asset("assets/UIStore/images/delete.png", height: 20,),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Image.asset(
                          "assets/UIStore/images/airbnb.png",
                        ),
                      ),
                      title: Text("You are invited for the interview by Airbnb."),
                      subtitle: Text("17:30"),
                      trailing: Image.asset("assets/UIStore/images/delete.png", height: 20,),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Image.asset(
                          "assets/UIStore/images/instagram.png",
                        ),
                      ),
                      title: Text("Your application has been Rejected by Instagram."),
                      subtitle: Text("17:30"),
                      trailing: Image.asset("assets/UIStore/images/delete.png", height: 20,),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Image.asset(
                          "assets/UIStore/images/linkedin.png",
                        ),
                      ),
                      title: Text("Your application has been viewed by Linkedin."),
                      subtitle: Text("17:30"),
                      trailing: Image.asset("assets/UIStore/images/delete.png", height: 20,),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Image.asset(
                          "assets/UIStore/images/instagram.png",
                        ),
                      ),
                      title: Text("Your application has been viewed by Instagram."),
                      subtitle: Text("17:30"),
                      trailing: Image.asset("assets/UIStore/images/delete.png", height: 20,),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Image.asset(
                          "assets/UIStore/images/twitter.png",
                        ),
                      ),
                      title: Text("Your application has been viewed by Twitter."),
                      subtitle: Text("17:30"),
                      trailing: Image.asset("assets/UIStore/images/delete.png", height: 20,),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Image.asset(
                          "assets/UIStore/images/airbnb.png",
                        ),
                      ),
                      title: Text("Your application has been viewed by Airbnb."),
                      subtitle: Text("17:30"),
                      trailing: Image.asset("assets/UIStore/images/delete.png", height: 20,),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Image.asset(
                          "assets/UIStore/images/netflix.png",
                        ),
                      ),
                      title: Text("Your application has been sent to Netflix."),
                      subtitle: Text("17:30"),
                      trailing: Image.asset("assets/UIStore/images/delete.png", height: 20,),
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => jajobdetail(),)
                        );
                      },
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Image.asset(
                          "assets/UIStore/images/linkedin.png",
                        ),
                      ),
                      title: Text("Your application has been sent to Linkedin."),
                      subtitle: Text("17:30"),
                      trailing: Image.asset("assets/UIStore/images/delete.png", height: 20,),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Image.asset(
                          "assets/UIStore/images/instagram.png",
                        ),
                      ),
                      title: Text("Your application has been sent to Instagram."),
                      subtitle: Text("17:30"),
                      trailing: Image.asset("assets/UIStore/images/delete.png", height: 20,),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Image.asset(
                          "assets/UIStore/images/twitter.png",
                        ),
                      ),
                      title: Text("Your application has been sent to Twitter."),
                      subtitle: Text("17:30"),
                      trailing: Image.asset("assets/UIStore/images/delete.png", height: 20,),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Image.asset(
                          "assets/UIStore/images/airbnb.png",
                        ),
                      ),
                      title: Text("Your application has been sent to Airbnb."),
                      subtitle: Text("17:30"),
                      trailing: Image.asset("assets/UIStore/images/delete.png", height: 20,),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Image.asset(
                          "assets/UIStore/images/swiggy.png",
                        ),
                      ),
                      title: Text("Your application has been sent to Swiggy."),
                      subtitle: Text("17:30"),
                      trailing: Image.asset("assets/UIStore/images/delete.png", height: 20,),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
