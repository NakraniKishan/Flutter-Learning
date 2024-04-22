import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class Registrationcode extends StatefulWidget {

  @override
  State<Registrationcode> createState() => _RegistrationcodeState();
}

class _RegistrationcodeState extends State<Registrationcode> {

  String code = """

import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/Registration/Registrationcode.dart';

class Registration extends StatefulWidget {
  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  var _formkey = GlobalKey<FormState>();
  var pass = "";
  var dropdownval = "Select";
  var checkval = true;
  var checkval2 = true;
  var gender = "M";
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Registration",
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Registrationcode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Create Your Account",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Your Email Address";
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Email*",
                      hintText: "karan",
                      prefix: Icon(
                          Icons.email_outlined,
                          color: Colors.indigo,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      icon: Icon(
                        Icons.email_outlined,
                        color: Colors.indigo,
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Your Phone Number";
                    }
                  },
                  keyboardType: TextInputType.number,
                  maxLength: 10,

                  decoration: InputDecoration(
                    labelText: "Phone Number*",
                    prefixText: "+91",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    icon: Icon(
                      Icons.phone,
                      color: Colors.indigo,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      "Select City",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    DropdownButton(
                      value: dropdownval,
                      items: [
                        DropdownMenuItem(
                          child: Text("Select City"),
                          value: "Select",
                          enabled: false,
                        ),
                        DropdownMenuItem(
                          child: Text("AHM"),
                          value: "Ahmedabad",
                        ),
                        DropdownMenuItem(
                          child: Text("Baroda"),
                          value: "Baroda",
                        ),
                        DropdownMenuItem(
                          child: Text("Rajkot"),
                          value: "Rajkot",
                        ),
                        DropdownMenuItem(
                          child: Text("Vapi"),
                          value: "Vapi",
                        ),
                        DropdownMenuItem(
                          child: Text("Surat"),
                          value: "Surat",
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          dropdownval = value!;
                          print(dropdownval);
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      "Hobby",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Checkbox(

                        checkColor: Colors.red,
                        activeColor: Colors.white,
                        value: checkval,
                        onChanged: (value) {
                          setState(() {
                            checkval = value!;
                          });
                        }),
                    Text("Playing"),
                    Checkbox(
                        value: checkval2,
                        onChanged: (value) {
                          setState(() {
                            checkval2 = value!;
                          });
                        }),
                    Text("Reading"),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      "Gender",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Radio(
                      value: "M",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value!;
                        });
                      },
                    ),
                    Text("Male"),
                    SizedBox(
                      width: 15,
                    ),
                    Radio(
                      activeColor: Colors.indigo,
                      value: "F",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value!;
                        });
                      },
                    ),
                    Text("Female"),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  validator: (value) {
                    pass = value!;
                    if (value.isEmpty) {
                      return "Enter Your Password";
                    } else if (value.length < 8) {
                      return "Password Must Be 8 Characters";
                    } else {
                      return null;
                    }
                  },
                  //keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password*",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    icon: Icon(
                      Icons.password,
                      color: Colors.indigo,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Your Password";
                    } else if (value != pass) {
                      return "Password Not Matched";
                    }
                  },
                  //keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Confirm Password*",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    icon: Icon(
                      Icons.password,
                      color: Colors.indigo,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                MaterialButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      // Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                         builder: (context) => Registrationcode(),
                       ));

                    }
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.indigo,
                ),
                SizedBox(
                  height: 150,
                ),
                Container(
                  child: Text(
                    "OR",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an Account? ",
                          style: TextStyle(color: Colors.grey)),
                      GestureDetector(
                        onTap: () {
                          // Navigator.of(context).pop();
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (context) => Login(),
                          //   ),
                          // );
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
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
        title: Text("Registartion - Code",style: TextStyle(color: Colors.white),),
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
