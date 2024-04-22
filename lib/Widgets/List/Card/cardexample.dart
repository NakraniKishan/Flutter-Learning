import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/Card/cardexamplecode.dart';

class cardexample extends StatefulWidget {
  @override
  State<cardexample> createState() => _cardexampleState();
}

class _cardexampleState extends State<cardexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Card",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => cardexamplecode(),
              ));
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                title: Text("Welcome to List Tile"),
                subtitle: Text("Welcome to List Tile Subtitle"),
              ),
              Card(
                child: ListTile(
                  title: Text("Welcome to Card"),
                  subtitle: Text("Welcome to Subtitle"),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text("Welcome to Card"),
                  subtitle: Text("elevation: 10"),
                ),
                elevation: 10,
              ),
              Card(
                child: ListTile(
                  title: Text("Welcome to Card"),
                  subtitle: Text("color: Colors.blue"),
                ),
                elevation: 10,
                color: Colors.blue,
              ),
              Card(
                child: ListTile(
                  title: Text("Welcome to Card"),
                  subtitle: Text("shadowColor: Colors.red"),
                ),
                elevation: 10,
                color: Colors.blue,
                shadowColor: Colors.red,
              ),
              Card(
                child: ListTile(
                  title: Text("Welcome to Card"),
                  subtitle: Text("surfaceTintColor: Colors.yellow"),
                ),
                elevation: 10,
                color: Colors.blue,
                // shadowColor: Colors.red,
                surfaceTintColor: Colors.yellow,
              ),
              Card(
                child: ListTile(
                  title: Text("Welcome to Card"),
                  subtitle: Text("margin: EdgeInsets.all(10)"),
                ),
                elevation: 10,
                color: Colors.blue,
                // shadowColor: Colors.red,
                surfaceTintColor: Colors.yellow,
                margin: EdgeInsets.all(10),
              ),
              Card(
                child: ListTile(
                  title: Text("Welcome to Card"),
                  subtitle: Text(" margin: EdgeInsets.only(right: 50)"),
                ),
                elevation: 10,
                color: Colors.blue,
                // shadowColor: Colors.red,
                surfaceTintColor: Colors.yellow,
                margin: EdgeInsets.only(right: 50),
              ),
              Card(
                child: ListTile(
                  title: Text("Welcome to Card"),
                  subtitle: Text("margin: EdgeInsets.only(left: 50)"),
                ),
                elevation: 10,
                color: Colors.blue,
                // shadowColor: Colors.red,
                surfaceTintColor: Colors.yellow,
                margin: EdgeInsets.only(left: 50),
              ),
              Card(
                child: ListTile(
                  title: Text("Welcome to Card"),
                  subtitle: Text("margin: EdgeInsets.only(top: 50)"),
                ),
                elevation: 10,
                color: Colors.blue,
                // shadowColor: Colors.red,
                surfaceTintColor: Colors.yellow,
                margin: EdgeInsets.only(top: 50),
              ),
              Card(
                child: ListTile(
                  title: Text("Welcome to Card"),
                  subtitle: Text(" margin: EdgeInsets.only(bottom: 50)"),
                ),
                elevation: 10,
                color: Colors.blue,
                // shadowColor: Colors.red,
                surfaceTintColor: Colors.yellow,
                margin: EdgeInsets.only(bottom: 50),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
