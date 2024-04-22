import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:trainingdemo/UI%20Store/Job%20Aware/jalogin.dart';
import 'package:trainingdemo/UI%20Store/Job%20Aware/jasignupotpvalidate.dart';

class jasignup extends StatefulWidget {

  @override
  State<jasignup> createState() => _jasignupState();
}

class _jasignupState extends State<jasignup> {
  TextEditingController _uemail = TextEditingController();
  // TextEditingController _upass = TextEditingController();
  var _formkey = GlobalKey<FormState>();
  var pass = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Image.asset("assets/images/logo.png",height: 100),
                SizedBox(
                  height: 20,
                ),
                Text("Sign up for free", style: TextStyle(color: HexColor("#1458AD"),fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value){
                    if(value!.isEmpty)
                      return "Enter Your Email Address";
                  },
                  controller: _uemail,
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
                  height: 15,
                ),
                TextFormField(
                  validator: (value){
                    pass = value!;
                    if(value.isEmpty)
                    {
                      return "Enter Password";
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
                  height: 15,
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
                  height: 15,
                ),

                MaterialButton(
                  onPressed: ()async{
                    if(_formkey.currentState!.validate())
                    {
                      // var email = _uemail.text.toString();
                      // var pass = _upass.text.toString();
                      // DBHelper obj = new DBHelper();
                      // var result = await obj
                      //     .adduser(email,pass)
                      //     .then((value) {});
                      // print(result);
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => jasignupotpvalidate(),)
                      );
                    }
                  },
                  child: Text("Signup"),
                  color: HexColor("#1458AD"),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  height: 50,
                  minWidth: 350,
                ),


                SizedBox(
                  height: 20,
                ),

                Text("OR", style: TextStyle(color: Colors.black,fontSize: 20),),

                SizedBox(
                  height: 10,
                ),



                Container(
                  height: 50,
                  width: 350,
                  //color: Colors.red,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: HexColor("#1458AD"), ),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 220,
                        height: 48,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/UIStore/images/google.png",height: 25),
                            Text("Continue with Google"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                Container(
                  height: 50,
                  width: 350,
                  //color: Colors.red,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: HexColor("#1458AD"), ),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 220,
                        height: 48,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/UIStore/images/apple.png",height: 35),
                            Text("Continue with Apple"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Have an account? ", style: TextStyle(fontSize: 15),),
                    GestureDetector(
                        onTap: (){
                          Navigator.of(context).pop();
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => jalogin(),)
                          );
                        },
                        child: Text("Login", style: TextStyle(color: HexColor("#1458AD"),fontSize: 15),)
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
