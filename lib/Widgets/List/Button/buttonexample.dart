import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/Button/buttonexamplecode.dart';

class buttonexample extends StatefulWidget {
  @override
  State<buttonexample> createState() => _buttonexampleState();
}

class _buttonexampleState extends State<buttonexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Button",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => buttonexamplecode(),
              ));
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [],
          ),
          BackButton(),
          CloseButton(),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "ElevatedButton",
              style: TextStyle(color: Colors.purple),
            ),
          ),
          FilledButton(

            onPressed: () {},
            child: Text("FilledButton"),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.insert_emoticon_sharp),
          ),
          MaterialButton(
            onPressed: () {},
            child: Text("MaterialButton"),
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text("OutlinedButton"),
          ),
          TextButton(
            onPressed: () {},
            child: Text("TextButton"),
          ),
        ],
      ),
    );
  }
}
