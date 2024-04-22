import 'package:flutter/material.dart';
import 'package:trainingdemo/Dependencies/List/QR%20Code%20Generator/Generate/generateqrcodeexamplecode.dart';

import '../View/viewqrcodeexample.dart';

class generateqrcodeexample extends StatefulWidget {

  @override
  State<generateqrcodeexample> createState() => _generateqrcodeexampleState();
}

class _generateqrcodeexampleState extends State<generateqrcodeexample> {
  TextEditingController qrdatainput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Generate QR Code",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => generateqrcodeexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),

      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              controller: qrdatainput,
              decoration: InputDecoration(
                hintText: "Title",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => viewqrcodeexample(did: qrdatainput.text),));
            },
              color: Colors.black,
              child: Text("Generate QR Code",style: TextStyle(color: Colors.white
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
