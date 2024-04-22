import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/SliverAppBar/examples/pinned_false-floating_true/silverappbarexampletwo.dart';
import 'package:trainingdemo/Widgets/List/SliverAppBar/examples/pinned_false/silverappbarexample.dart';
import 'package:trainingdemo/Widgets/List/SliverAppBar/examples/pinned_true/silverappbarexampleone.dart';

class silverappbarlist extends StatefulWidget {

  @override
  State<silverappbarlist> createState() => _silverappbarlistState();
}

class _silverappbarlistState extends State<silverappbarlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Silver Appbar List",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,

      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [

            ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => silverappbarexample(),));
              },
              title: Text("Silver Appbar Effect 1"),
              subtitle: Text("pinned: false"),
            ),
            ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => silverappbarexampleone(),));
              },
              title: Text("Silver Appbar Effect 2"),
              subtitle: Text("pinned: true"),
            ),
            ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => silverappbarexampletwo(),));
              },
              title: Text("Silver Appbar Effect 3"),
              subtitle: Text("pinned_false-floating_true"),
            ),


          ],
        ),
      )
    );
  }
}
