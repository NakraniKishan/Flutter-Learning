import 'package:flutter/material.dart';
import 'package:trainingdemo/Dependencies/List/Star%20Rating/Flutter%20Rating%20Bar/flutterratingbarexample.dart';
import 'package:trainingdemo/Dependencies/List/Star%20Rating/Flutter%20Star%20Rating/starratingexample.dart';
import 'package:trainingdemo/Dependencies/List/Star%20Rating/Star%20Rating/starratingnewexample.dart';

class starratingdeplist extends StatefulWidget {

  @override
  State<starratingdeplist> createState() => _starratingdeplistState();
}

class _starratingdeplistState extends State<starratingdeplist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Star rating List",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding:  EdgeInsets.all(10),
        child: Column(
          children: [
            ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => starratingexample(),));
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
            title: Text("Star Rating"),
              subtitle: Text("flutter_rating_stars:"),
            ),



            ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => starratingnewexample(),));
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
              title: Text("Star Rating"),
              subtitle: Text("star_rating:"),
            ),

            ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => flutterratingbarexample(),));
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
              title: Text("Star Rating"),
              subtitle: Text("flutter_rating_bar:"),
            ),
          ],
        ),
      ),
    );
  }
}
