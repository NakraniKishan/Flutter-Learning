import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:trainingdemo/UI%20Store/Job%20Aware/jaforgotpassword.dart';
import 'package:trainingdemo/UI%20Store/Job%20Aware/jahome.dart';
import 'package:trainingdemo/UI%20Store/Job%20Aware/jasignup.dart';

class jalogin extends StatefulWidget {

  @override
  State<jalogin> createState() => _jaloginState();
}

class _jaloginState extends State<jalogin> {
  var checkrem = false;
  var _formkey = GlobalKey<FormState>();
  bool ishidepassword = true;

  void _togglePasswordView(){
    // if(ishidepassword== true)
    //   {
    //     ishidepassword = false;
    //   }
    // else
    //   {
    //     ishidepassword = true;
    //   }
    setState((){
      if(ishidepassword== true)
      {
        ishidepassword = false;
      }
      else
      {
        ishidepassword = true;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Form(
              key: _formkey,
              child: Container(
                child: Column(
                  children: [
                    Image.asset("assets/UIStore/images/logo.png",height: 100),
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
                      height: 15,
                    ),
                    TextFormField(
                      validator: (value){
                        if(value!.isEmpty)
                          return "Enter Your Password";
                      },
                      //obscureText: true,
                      obscureText: ishidepassword,
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        //suffixIcon: Icon(Icons.visibility, color: HexColor("#B8D4F8"),),

                        suffixIcon: InkWell(
                            onTap: _togglePasswordView,
                            child: Icon(Icons.visibility, color: HexColor("#B8D4F8"),)
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 15,
                    ),


                    MaterialButton(
                      onPressed: () {
                        if(_formkey.currentState!.validate())
                        {
                          Navigator.of(context).pop();
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => jahome(),)
                          );
                        }
                      },

                      child: Text("Login"),
                      color: HexColor("#1458AD"),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      height: 50,
                      //minWidth: 385,
                      minWidth: MediaQuery.of(context).size.width,
                    ),

                    SizedBox(
                      height: 15,
                    ),

                    MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => jasignup(),)
                        );

                      },
                      child: Text("Create An Account", style: TextStyle(color: HexColor("#1458AD"),),),
                      color: HexColor("#B8D4F8"),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      height: 50,
                      minWidth: MediaQuery.of(context).size.width,
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => jaforgotpassword(),)
                          );
                        },
                        child: Text("Forgot your Password?", style: TextStyle(color: HexColor("#1458AD"),fontSize: 15),)
                    ),

                    // SizedBox(
                    //   height: 15,
                    // ),
                    //
                    // Text("OR", style: TextStyle(color: Colors.black,fontSize: 20),),

                    // SizedBox(
                    //   height: 10,
                    // ),
                    //
                    //
                    //
                    // Container(
                    //   height: 50,
                    //   width: 350,
                    //   //color: Colors.red,
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     border: Border.all(color: HexColor("#1458AD"), ),
                    //     borderRadius: BorderRadius.all(Radius.circular(15)),
                    //   ),
                    //   child: Column(
                    //     children: [
                    //       Container(
                    //         width: 220,
                    //         height: 48,
                    //         child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //           children: [
                    //             Image.asset("assets/images/google.png",height: 25),
                    //             Text("Continue with Google"),
                    //           ],
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    //
                    // SizedBox(
                    //   height: 10,
                    // ),
                    //
                    // Container(
                    //   height: 50,
                    //   width: 350,
                    //   //color: Colors.red,
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     border: Border.all(color: HexColor("#1458AD"), ),
                    //     borderRadius: BorderRadius.all(Radius.circular(15)),
                    //   ),
                    //   child: Column(
                    //     children: [
                    //       Container(
                    //         width: 220,
                    //         height: 48,
                    //         child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //           children: [
                    //             Image.asset("assets/images/apple.png",height: 35),
                    //             Text("Continue with Apple"),
                    //           ],
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),

                    // SizedBox(
                    //   height: 20,
                    // ),
                    //
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Text("Don't have an account? ", style: TextStyle(fontSize: 15),),
                    //     GestureDetector(
                    //         onTap: (){
                    //           Navigator.of(context).push(
                    //               MaterialPageRoute(builder: (context) => Signup(),)
                    //           );
                    //         },
                    //         child: Text("Sign Up", style: TextStyle(color: HexColor("#1458AD"),fontSize: 15),)
                    //     ),
                    //   ],
                    // ),

                  ],
                ),

              ),
            ),
          ),
        ),
      ),
    );
  }
}
