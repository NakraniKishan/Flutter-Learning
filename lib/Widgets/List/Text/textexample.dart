import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/Text/textexamplecode.dart';

class textexample extends StatefulWidget {

  @override
  State<textexample> createState() => _textexampleState();
}

class _textexampleState extends State<textexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Text",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => textexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text("Flutter Developer"),
            Text("Flutter Developer", style: TextStyle(color: Colors.red)),
            Text("Flutter Developer", style: TextStyle(color: Colors.red, fontSize: 20)),
            Text("Flutter Developer", style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold)),
            Text("Flutter Developer", style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold,backgroundColor: Colors.indigo)),
            Text("Flutter Developer", style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold,decoration: TextDecoration.underline)),
            Text("Flutter Developer", style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold,decoration: TextDecoration.lineThrough)),
            Text("Flutter Developer", style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold,decoration: TextDecoration.lineThrough,fontStyle: FontStyle.italic)),
          ],
        ),
      ),
    );
  }
}
