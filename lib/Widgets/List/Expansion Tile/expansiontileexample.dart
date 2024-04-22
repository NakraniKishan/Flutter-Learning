import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/Expansion%20Tile/expansiontileexamplecode.dart';

class expansiontileexample extends StatefulWidget {

  @override
  State<expansiontileexample> createState() => _expansiontileexampleState();
}

class _expansiontileexampleState extends State<expansiontileexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Expansion Tile",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => expansiontileexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(

          children: [
            ExpansionTile(
              title: Text("Hello World"),
            ),
            ExpansionTile(
              title: Text("Hello World"),
              children: [
                Text("Name : Karan patel"),
                Text("Phone No: 123456789"),
                const Text("isAdmin: No")
              ],
            ),

            ExpansionTile(
              title: Text("Hello World"),
              maintainState: true,
              expandedCrossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: const [Text("This is a Row")],
                ),
                Text("Name : Shyam"),
                Text("Phone No: 7412589630"),
                const Text("isAdmin: No")
              ],
            ),

            ExpansionTile(
              title: Text("Hello World"),
              maintainState: true,
              expandedAlignment: Alignment.centerLeft,
              children: [
                Text("Name : Jatin"),
                Text("Phone No: 0258963147"),
                const Text("isAdmin: No")
              ],
            ),

            ExpansionTile(
              title: Text("Hello World"),
              maintainState: true,
              backgroundColor: Colors.red,
              collapsedBackgroundColor: Colors.yellow,
              children: [
                Text("Name : Bhargav"),
                Text("Phone No: 8974653210"),
                const Text("isAdmin: No")
              ],
            ),
          ],
        ),
      )
    );
  }
}
