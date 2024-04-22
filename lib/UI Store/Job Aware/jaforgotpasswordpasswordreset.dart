import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:trainingdemo/UI%20Store/Job%20Aware/jsforgotpasswordresetsuccess.dart';

class jaforgotpasswordpasswordreset extends StatefulWidget {

  @override
  State<jaforgotpasswordpasswordreset> createState() => _jaforgotpasswordpasswordresetState();
}

class _jaforgotpasswordpasswordresetState extends State<jaforgotpasswordpasswordreset> {
  var _formkey = GlobalKey<FormState>();
  var pass = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create New password", style: TextStyle(color: Colors.white),),
        backgroundColor: HexColor("#1458AD"),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Image.asset("assets/UIStore/images/passwordreset.png",height: 250,width: 400,),
                SizedBox(
                  height: 12,
                ),
                Text("Your new password must be different",style: TextStyle(fontSize: 15, color: HexColor("#1458AD"),),),
                SizedBox(
                  height: 5,
                ),
                Text("from previous used password.",style: TextStyle(fontSize: 15, color: HexColor("#1458AD"),),),

                SizedBox(
                  height: 20,
                ),

                TextFormField(
                  validator: (value)
                  {
                    pass = value!;
                    if(value.isEmpty)
                    {
                      return "Enter Your Password";
                    }
                    else if(value.length<8)
                    {
                      return "Password Must Be 8 Characters";
                    }
                    else
                    {
                      return null;
                    }
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      suffixIcon: Icon(Icons.visibility, color: HexColor("#B8D4F8"),)
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                TextFormField(
                  validator: (value){
                    if(value!.isEmpty)
                    {
                      return "Enter Confirm Password";
                    }
                    else if(value != pass)
                    {
                      return "Password Not Matched";
                    }
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Confirm Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      suffixIcon: Icon(Icons.visibility, color: HexColor("#B8D4F8"),)
                  ),
                ),

                SizedBox(
                  height: 140,
                ),

                MaterialButton(
                  onPressed:(){

                    if(_formkey.currentState!.validate())
                    {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => jsforgotpasswordresetsuccess(),)
                      );
                    }
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
      ),
    );
  }
}
