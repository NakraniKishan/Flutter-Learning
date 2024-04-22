import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:trainingdemo/Dependencies/List/Close%20App%20Double%20Tap/closeappcode.dart';

class closeapp extends StatefulWidget {

  @override
  State<closeapp> createState() => _closeappState();
}

class _closeappState extends State<closeapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white,),
          title: Text("Close App ",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.black,
          centerTitle: true,
          leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){
            Navigator.of(context).pop();
          }),
          actions: [
            IconButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => closeappcode(),)
                );
              },
              icon: Icon(Icons.code),
            )
          ],
        ),
      body: DoubleBackToCloseApp(
        snackBar: SnackBar(
          content: Text("Tap Back again to leave"),
        ),
        child: Center(
          child: ElevatedButton(
            child: Text("Tap to simulate Back"),
            onPressed: WidgetsBinding.instance.handlePopRoute,
          ),
        ),
      )
    );
  }
}
