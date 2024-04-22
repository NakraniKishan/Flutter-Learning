import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:trainingdemo/UI%20Store/Job%20Aware/jalogin.dart';

class jsforgotpasswordresetsuccess extends StatefulWidget {

  @override
  State<jsforgotpasswordresetsuccess> createState() => _jsforgotpasswordresetsuccessState();
}

class _jsforgotpasswordresetsuccessState extends State<jsforgotpasswordresetsuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Image.asset("assets/UIStore/images/passwordresetsuccess.png"),
              SizedBox(
                height: 20,
              ),
              Text("Password Reset Successfully",style: TextStyle(fontSize: 18, color: HexColor("#1458AD"),fontWeight: FontWeight.bold),),
              SizedBox(
                height: 12,
              ),
              Text("Your account is ready to use.",style: TextStyle(fontSize: 15, color: HexColor("#1458AD"),),),
              SizedBox(
                height: 310,
              ),

              MaterialButton(
                onPressed:(){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => jalogin(),)
                  );
                },
                child: Text("Go to Home", style: TextStyle(color: Colors.white),),
                color: HexColor("1458AD"),
                height: 50,
                minWidth: 350,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
