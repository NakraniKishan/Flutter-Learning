import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:trainingdemo/UI%20Store/Job%20Aware/jahome.dart';

class jasignupverified extends StatefulWidget {

  @override
  State<jasignupverified> createState() => _jasignupverifiedState();
}

class _jasignupverifiedState extends State<jasignupverified> {
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
              Image.asset("assets/UIStore/images/verified.png"),
              SizedBox(
                height: 12,
              ),
              Text("Congratulations",style: TextStyle(fontSize: 18, color: HexColor("#1458AD"),fontWeight: FontWeight.bold),),
              SizedBox(
                height: 12,
              ),
              Text("Your OTP has been verified.",style: TextStyle(fontSize: 15, color: HexColor("#1458AD"),),),

              SizedBox(
                height: 200,
              ),

              MaterialButton(
                onPressed:(){
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => jahome(),)
                  );
                },
                child: Text("Continue", style: TextStyle(color: Colors.white),),
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
