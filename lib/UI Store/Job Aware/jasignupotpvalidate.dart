import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:trainingdemo/UI%20Store/Job%20Aware/jasignupverified.dart';

class jasignupotpvalidate extends StatefulWidget {

  @override
  State<jasignupotpvalidate> createState() => _jasignupotpvalidateState();
}

class _jasignupotpvalidateState extends State<jasignupotpvalidate> {
  var _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: HexColor("#1458AD"),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Image.asset("assets/UIStore/images/mail.png", height: 200,),
                SizedBox(
                  height: 12,
                ),
                Text("Mail Sent Successfully",style: TextStyle(fontSize: 18, color: HexColor("#1458AD"),fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 12,
                ),
                Text("Enter OTP sent with the mail to",style: TextStyle(fontSize: 15, color: HexColor("#1458AD"),),),
                SizedBox(
                  height: 5,
                ),
                Text("continue with the account.",style: TextStyle(fontSize: 15, color: HexColor("#1458AD"),),),
                SizedBox(
                  height: 30,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      //color: Colors.red,
                      width: 60,
                      height: 80,
                      child: TextFormField(
                        validator: (value){
                          if(value!.isEmpty)
                            return "";
                        },
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        maxLength: 1,
                      ),
                    ),
                    Container(
                      //color: Colors.red,
                      width: 60,
                      height: 80,
                      child: TextFormField(
                        validator: (value){
                          if(value!.isEmpty)
                            return "";
                        },
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        maxLength: 1,
                      ),
                    ),
                    Container(
                      //color: Colors.red,
                      width: 60,
                      height: 80,
                      child: TextFormField(
                        validator: (value){
                          if(value!.isEmpty)
                            return "";
                        },
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        maxLength: 1,
                      ),
                    ),
                    Container(
                      //color: Colors.red,
                      width: 60,
                      height: 80,
                      child: TextFormField(
                        validator: (value){
                          if(value!.isEmpty)
                            return "";
                        },
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        maxLength: 1,
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 22,
                ),

                Text("Resend OTP",style: TextStyle(fontSize: 18, color: HexColor("#1458AD"),),),

                SizedBox(
                  height: 200,
                ),

                MaterialButton(
                  onPressed: (){
                    if(_formkey.currentState!.validate())
                    {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => jasignupverified(),)
                      );
                    }
                  },
                  child: Text("Submit"),
                  color: HexColor("#1458AD"),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  height: 50,
                  minWidth: 350,
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
