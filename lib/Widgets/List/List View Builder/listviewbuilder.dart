import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/List%20View%20Builder/listviewbuildercode.dart';

class listviewbuilder extends StatefulWidget {

  @override
  State<listviewbuilder> createState() => _listviewbuilderState();
}

class _listviewbuilderState extends State<listviewbuilder> {
  List image = [
    "https://images.pexels.com/photos/11762029/pexels-photo-11762029.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/11762029/pexels-photo-11762029.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/11762029/pexels-photo-11762029.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/11762029/pexels-photo-11762029.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  ];
  List names = [
    "Chintan",
    "Chintan",
    "Chintan",
    "Chintan",
  ];
  List msg = [
    "How Are You?",
    "How Are You?",
    "How Are You?",
    "How Are You?",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Chat List - Builder",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => listviewbuildercode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: ListView.builder(
        // shrinkWrap: true,
        itemCount: names.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(names[index]),
            subtitle: Text(msg[index]),
            leading: CircleAvatar(
              child: Text(names[index][0]),
              backgroundImage: NetworkImage(image[index]),
            ),
          );
        },
      ),
    );
  }
}
