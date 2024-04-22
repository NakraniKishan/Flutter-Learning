import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trainingdemo/Dependencies/List/Shared%20Preference/sharedpreferncehomecode.dart';
import 'package:trainingdemo/Dependencies/List/Shared%20Preference/sharedpreferncelogin.dart';

class sharedpreferncehome extends StatefulWidget {

  @override
  State<sharedpreferncehome> createState() => _sharedpreferncehomeState();
}

class _sharedpreferncehomeState extends State<sharedpreferncehome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Home",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => sharedpreferncehomecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Row(
              children: [
                Text("Welcome Home")
              ],
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () async{
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.clear().then((value) {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => sharedpreferncelogin(),)
                  );
                });

              },
              child: Text("Logout"),
              color: Colors.black,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
