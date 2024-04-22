import 'package:flutter/material.dart';
import 'package:trainingdemo/UI%20Store/Gossip/gossipdashboard.dart';
import 'package:trainingdemo/UI%20Store/Job%20Aware/jaonboard.dart';

class uistorelist extends StatefulWidget {

  @override
  State<uistorelist> createState() => _uistorelistState();
}

class _uistorelistState extends State<uistorelist> {
  List names = ["WhatsApp","Jobs Aware"];
  List filename = [
   gossipdashboard(),
    jaonboard(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("UI List",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 10),
        child: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context,index){
              return ListTile(
                onTap: () {

                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => filename[index],
                  ));
                },
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.token,color: Colors.white,),
                ),
                //subtitle: Text(""),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black,
                ),
                title: Text(names[index]),
              );
            }
        ),
      ),
    );
  }
}
