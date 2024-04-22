import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trainingdemo/UI%20Store/Gossip/gossipcallinfoscreen.dart';

class gossipcallscreen extends StatefulWidget {

  @override
  State<gossipcallscreen> createState() => _gossipcallscreenState();
}

class _gossipcallscreenState extends State<gossipcallscreen> {
  List image = [
    "https://images.pexels.com/photos/11762029/pexels-photo-11762029.jpeg?auto=compress&cs=tinysrgb&w=1600&lazy=load",
    "https://images.pexels.com/photos/4947740/pexels-photo-4947740.jpeg?auto=compress&cs=tinysrgb&w=1600&lazy=load",
    "https://images.pexels.com/photos/12931722/pexels-photo-12931722.jpeg?auto=compress&cs=tinysrgb&w=1600&lazy=load",
    "https://images.pexels.com/photos/12486294/pexels-photo-12486294.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/12708081/pexels-photo-12708081.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/12502186/pexels-photo-12502186.jpeg?auto=compress&cs=tinysrgb&w=1600&lazy=load",
    "https://images.pexels.com/photos/12487311/pexels-photo-12487311.jpeg?auto=compress&cs=tinysrgb&w=1600&lazy=load",
    "https://images.pexels.com/photos/12760654/pexels-photo-12760654.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/12913573/pexels-photo-12913573.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/12437389/pexels-photo-12437389.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/8230825/pexels-photo-8230825.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/12871449/pexels-photo-12871449.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/13010671/pexels-photo-13010671.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/13010671/pexels-photo-13010671.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  ];
  List names = ["Girl", "Parth", "Priya","Keyur","Rohan","Ankit","Deepak","Raj","Priyank","Harsh","Keyur","Gopal","Anand"];
  List texts = [
    "How Are you?",
    "How Are you?",
    "How Are you?",
    "How Are you?",
    "How Are you?",
    "How Are you?",
    "How Are you?",
    "How Are you?",
    "How Are you?",
    "How Are you?",
    "How Are you?",
    "How Are you?",
    "How Are you?",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: image.length,
        itemBuilder: (context,index){
          return ListTile(
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => gossipcallinfoscreen(),)
              );
            },
            leading: CircleAvatar(
              //foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(image[index]),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  names[index],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5.0),
              child: Row(
                children: [
                  Icon(CupertinoIcons.phone_arrow_down_left,color: Colors.red,size: 15),
                  Text("July 22, 3:02 PM"),
                ],
              ),
            ),
            trailing: Icon(Icons.call),
          );
        },
      ),
    );
  }
}
