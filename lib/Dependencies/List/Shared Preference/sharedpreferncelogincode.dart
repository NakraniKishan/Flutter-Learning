import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class sharedpreferncelogincode extends StatefulWidget {

  @override
  State<sharedpreferncelogincode> createState() => _sharedpreferncelogincodeState();
}

class _sharedpreferncelogincodeState extends State<sharedpreferncelogincode> {
  String code = """


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
        title: Text("Login"),
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



""";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Login - Code",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: IconButton(
                onPressed: () {
                  Clipboard.setData(new ClipboardData(text: code))
                      .then((value) {
                    // key.currentState.showSnackBar(SnackBar(
                    //   content: new Text("Copied to Clipboard"),
                    // ));
                  });
                },
                icon: Icon(Icons.copy)),
          ),
        ],
      ),

      body:  SyntaxView(
        code: code,
        syntax: Syntax.DART,
        expanded: true,
        syntaxTheme: SyntaxTheme.gravityDark(),
        fontSize: 12.0,
        withZoom: false,
        withLinesCount: false,
      ),
    );
  }
}
