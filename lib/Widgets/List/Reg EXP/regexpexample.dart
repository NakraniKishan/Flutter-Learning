import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/Reg%20EXP/regexpexamplecode.dart';

class regexpexample extends StatefulWidget {

  @override
  State<regexpexample> createState() => _regexpexampleState();
}

class _regexpexampleState extends State<regexpexample> {
  var _formkey = GlobalKey<FormState>();
  var regExp = new RegExp(
      r'[!@#$%^&*(),.?":{}|<>]'
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Regular Expression",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => regexpexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: _formkey,
            child: Column(

              children: [
                TextFormField(
                  validator: (value) {
                    if(value!.isEmpty){
                      return "Enter Username";
                    }
                    else if (value.length < 8) {
                      return "Enter More than 8 Character for Username";
                    }

                    else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      label: Text("Username"), border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Enter Special Characters are not allowed  "),
                SizedBox(
                  height: 10,
                ),
                Text("!@#%^&*(),.?:{}|<>"),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (value) {
                    if(value!.contains(regExp))
                    {
                      return "No Special Characters Allowed";
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
                  decoration: InputDecoration(
                      label: Text("Password"), border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10,
                ),
                OutlinedButton(
                  onPressed: () {
                    if(_formkey.currentState!.validate())
                    {
                      print("Successfully Verified");
                    }
                    else
                    {

                    }
                  },
                  child: Text("Submit"),
                ),
              ],
            ),
          )
      ),
    );
  }
}
