import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trainingdemo/Dependencies/List/Shared%20Preference/sharedpreferncehome.dart';
import 'package:trainingdemo/Dependencies/List/Shared%20Preference/sharedpreferncelogincode.dart';

class sharedpreferncelogin extends StatefulWidget {

  @override
  State<sharedpreferncelogin> createState() => _sharedprefernceloginState();
}

class _sharedprefernceloginState extends State<sharedpreferncelogin> {
  TextEditingController name = new TextEditingController();
  void initState(){
    super.initState();
    checklogin();
  }

  void checklogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.containsKey("isloginsp")) {
      Navigator.of(context).pop();
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => sharedpreferncehome(),)
      );
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Login",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => sharedpreferncelogincode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(10),
          child: Column(
            children: [
              TextFormField(
                controller: name,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(),
                ),

              ),
              MaterialButton(
                onPressed: () async{
                  var uname = name.text.toString();
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  prefs.setString("isloginsp", "ok");
                  prefs.setString("username", uname).then((value) {
                    name.text = "";
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => sharedpreferncehome(),)
                    );
                  });
                },
                child: Text("Login"),
                color: Colors.black,
                textColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
