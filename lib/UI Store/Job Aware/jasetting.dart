import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class jasetting extends StatefulWidget {

  @override
  State<jasetting> createState() => _jasettingState();
}

class _jasettingState extends State<jasetting> {
  var _sckey = GlobalKey<ScaffoldState>();
  var crntdx = 0;
  PageController PgCon = new PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _sckey,
      appBar: AppBar(
        title: Text("Setting", style: TextStyle(color: HexColor("1458AD"),),),
        //centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: HexColor("#1458AD"),),
        leading: IconButton(
          onPressed: (){

            Navigator.of(context).pop();

          },
          icon: Icon(Icons.arrow_back),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                //color: HexColor("B8D4F8"),
                borderRadius: BorderRadius.all(Radius.circular(10)),

              ),
              child: Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Account Setting"),
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                //color: HexColor("B8D4F8"),
                borderRadius: BorderRadius.all(Radius.circular(10)),

              ),
              child: Row(
                children: [
                  Icon(Icons.info_outline),
                  SizedBox(
                    width: 10,
                  ),
                  Text("About"),
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                //color: HexColor("B8D4F8"),
                borderRadius: BorderRadius.all(Radius.circular(10)),

              ),
              child: Row(
                children: [
                  Icon(Icons.output),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Logout"),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
