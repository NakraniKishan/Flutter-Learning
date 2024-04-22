import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:trainingdemo/UI%20Store/Job%20Aware/jaforgotpasswordotpvalidate.dart';
import 'package:trainingdemo/UI%20Store/Job%20Aware/jalogin.dart';
import 'package:trainingdemo/UI%20Store/Job%20Aware/jasignup.dart';

class jaforgotpassword extends StatefulWidget {

  @override
  State<jaforgotpassword> createState() => _jaforgotpasswordState();
}

class _jaforgotpasswordState extends State<jaforgotpassword> {
  var _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password", style: TextStyle(color: Colors.white),),
        backgroundColor: HexColor("#1458AD"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Image.asset("assets/UIStore/images/forgotpassword.png"),
                SizedBox(
                  height: 12,
                ),
                Text("Trouble Logging In?",style: TextStyle(fontSize: 18),),
                SizedBox(
                  height: 12,
                ),
                Text("Enter your email and we'll send you 4",style: TextStyle(fontSize: 15,color: HexColor("#1458AD"),),),
                SizedBox(
                  height: 5,
                ),
                Text("digit code to your email for the verification",style: TextStyle(fontSize: 15,color: HexColor("#1458AD"),),),
                SizedBox(
                  height: 5,
                ),
                Text("to get back into your account.",style: TextStyle(fontSize: 15,color: HexColor("#1458AD"),),),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value){
                    if(value!.isEmpty)
                      return "Enter Your Email Address";
                  },

                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      suffixIcon: Icon(Icons.email_outlined, color: HexColor("#B8D4F8"),)
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                MaterialButton(
                  onPressed: (){
                    if(_formkey.currentState!.validate())
                    {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => jaforgotpasswordotpvalidate(),)
                      );
                    }
                  },
                  child: Text("Continue"),
                  color: HexColor("#1458AD"),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  height: 50,
                  minWidth: 350,
                ),

                SizedBox(
                  height: 30,
                ),
                Text("OR",style: TextStyle(fontSize: 18),),
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => jasignup())
                      );
                    },
                    child: Text("Create New Account",style: TextStyle(fontSize: 15,color: HexColor("#1458AD"),),)
                ),

                SizedBox(
                  height: 70,
                ),

                MaterialButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => jalogin(),)
                    );
                  },
                  child: Text("Back To Login"),
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
