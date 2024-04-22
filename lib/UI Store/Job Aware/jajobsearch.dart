import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class jajobsearch extends StatefulWidget {

  @override
  State<jajobsearch> createState() => _jajobsearchState();
}

class _jajobsearchState extends State<jajobsearch> {
  var _sckey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _sckey,
      appBar: AppBar(
        title: Text(
          "Job Search",
          style: TextStyle(
            color: HexColor("1458AD"),
          ),
        ),
        //centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: HexColor("#1458AD"),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Search",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Location",
                  prefixIcon: Icon(Icons.location_on),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text("Recent Search", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),),
                ],
              ),

              SizedBox(
                height: 10,
              ),



              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height-334,
                child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(Icons.restore_sharp),
                      title: Text("Flutter"),
                      subtitle: Text("Surat, Gujarat"),
                    ),
                    ListTile(
                      leading: Icon(Icons.restore_sharp),
                      title: Text("Flutter"),
                      subtitle: Text("Surat, Gujarat"),
                    ),
                    ListTile(
                      leading: Icon(Icons.restore_sharp),
                      title: Text("Flutter"),
                      subtitle: Text("Surat, Gujarat"),
                    ),
                    ListTile(
                      leading: Icon(Icons.restore_sharp),
                      title: Text("Flutter"),
                      subtitle: Text("Surat, Gujarat"),
                    ),
                    ListTile(
                      leading: Icon(Icons.restore_sharp),
                      title: Text("Flutter"),
                      subtitle: Text("Surat, Gujarat"),
                    ),
                    ListTile(
                      leading: Icon(Icons.restore_sharp),
                      title: Text("Flutter"),
                      subtitle: Text("Surat, Gujarat"),
                    ),
                    ListTile(
                      leading: Icon(Icons.restore_sharp),
                      title: Text("Flutter"),
                      subtitle: Text("Surat, Gujarat"),
                    ),
                    ListTile(
                      leading: Icon(Icons.restore_sharp),
                      title: Text("Flutter"),
                      subtitle: Text("Surat, Gujarat"),
                    ),
                    ListTile(
                      leading: Icon(Icons.restore_sharp),
                      title: Text("Flutter"),
                      subtitle: Text("Surat, Gujarat"),
                    ),
                    ListTile(
                      leading: Icon(Icons.restore_sharp),
                      title: Text("Flutter"),
                      subtitle: Text("Surat, Gujarat"),
                    ),

                  ],
                ),
              ),

              SizedBox(
                height: 10,
              ),
              // GestureDetector(
              //   onTap: (){
              //     Navigator.of(context).push(
              //         MaterialPageRoute(builder: (context) => JobsSearchResult())
              //     );
              //   },
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: [
              //       MaterialButton(
              //         onPressed: () {},
              //         child: Text("Search jobs"),
              //         color: HexColor("#1458AD"),
              //         textColor: Colors.white,
              //         shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(15)),
              //         height: 50,
              //       ),
              //     ],
              //   ),
              // ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: (){},
                    child: Icon(Icons.search),
                    //child: Text("Search jobs"),
                    //color: HexColor("#1458AD"),
                    backgroundColor: HexColor("#1458AD"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    //height: 50,
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
