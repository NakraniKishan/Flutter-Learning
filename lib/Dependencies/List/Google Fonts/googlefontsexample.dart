import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trainingdemo/Dependencies/List/Google%20Fonts/googlefontsexamplecode.dart';

class googlefontsexample extends StatefulWidget {

  @override
  State<googlefontsexample> createState() => _googlefontsexampleState();
}

class _googlefontsexampleState extends State<googlefontsexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Google Fonts",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => googlefontsexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text("Google Fonts",style: GoogleFonts.aclonica(fontSize: 40),),
          SizedBox(
            height: 10,
          ),
          Text("Google Fonts",style: GoogleFonts.actor(fontSize: 40),),
          SizedBox(
            height: 10,
          ),
          Text("Google Fonts",style: GoogleFonts.balooBhaijaan2(fontSize: 40),),
        ],
      ),
    );
  }
}
