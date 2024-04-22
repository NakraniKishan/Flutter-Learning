import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class jajobdetail extends StatefulWidget {

  @override
  State<jajobdetail> createState() => _jajobdetailState();
}

class _jajobdetailState extends State<jajobdetail> {
  var _sckey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      key: _sckey,
      appBar: AppBar(
        title: Text("Job Detail", style: TextStyle(color: HexColor("1458AD"),),),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height-760,
                child: ListView(
                  children: [
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Image.asset(
                            "assets/UIStore/images/netflix.png",
                          ),
                        ),
                        title: Text("Visual Designer"),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Netflix"),
                            Text("Surat, Gujarat"),
                          ],
                        ),
                        trailing: Image.asset(
                          "assets/UIStore/images/bookmark.png",
                          height: 20,
                          alignment: Alignment.topRight,
                        ),
                      ),

                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Salary", style:TextStyle(fontSize: 20),),
                  Text("20,000-40,000"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Type", style:TextStyle(fontSize: 20),),
                  Text("Full-Time Day-Shift"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Location", style:TextStyle(fontSize: 20),),
                  Text("Surat, Gujarat"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: HexColor("#1458AD"),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text("Requirements", style:TextStyle(fontSize: 20),),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset("assets/UIStore/images/jd.png", height: 20,),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Experience in Figma and Sketch."),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset("assets/UIStore/images/jd.png", height: 20,),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Able to work in large and small team."),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset("assets/UIStore/images/jd.png", height: 20,),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Experience in Figma and Sketch."),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset("assets/UIStore/images/jd.png", height: 20,),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Able to work in large and small team."),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset("assets/UIStore/images/jd.png", height: 20,),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Experience in Figma and Sketch."),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset("assets/UIStore/images/jd.png", height: 20,),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Able to work in large and small team."),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset("assets/UIStore/images/jd.png", height: 20,),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Experience in Figma and Sketch."),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset("assets/UIStore/images/jd.png", height: 20,),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Able to work in large and small team."),
                ],
              ),
              SizedBox(
                height: 10,
              ),


              MaterialButton(
                onPressed: (){},
                child: Text("Apply Now", style: TextStyle(color: Colors.white,),),
                color: HexColor("#1458AD"),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                height: 50,
                minWidth: 350,
              ),

              SizedBox(
                height: 10,
              ),


              MaterialButton(
                onPressed: (){},
                child: Text("Application Sent", style: TextStyle(color: HexColor("#1458AD")),),
                color: HexColor("#B8D4F8"),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                height: 50,
                minWidth: 350,
              ),

              SizedBox(
                height: 10,
              ),


              MaterialButton(
                onPressed: (){},
                child: Text("Application Viewed", style: TextStyle(color: HexColor("#E48900")),),
                color: HexColor("#B8D4F8"),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                height: 50,
                minWidth: 350,
              ),

              SizedBox(
                height: 10,
              ),


              MaterialButton(
                onPressed: (){},
                child: Text("Application Rejected", style: TextStyle(color: HexColor("#FF0000")),),
                color: HexColor("#B8D4F8"),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                height: 50,
                minWidth: 350,
              ),

              SizedBox(
                height: 10,
              ),


              MaterialButton(
                onPressed: (){},
                child: Text("Interview", style: TextStyle(color: HexColor("#32CD32")),),
                color: HexColor("#B8D4F8"),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                height: 50,
                minWidth: 350,
              ),

              SizedBox(
                height: 10,
              ),


              MaterialButton(
                onPressed: (){},
                child: Text("Selected", style: TextStyle(color: HexColor("#1458AD")),),
                color: HexColor("#B8D4F8"),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                height: 50,
                minWidth: 350,
              ),








            ],
          ),
        ),
      ),

    );
  }
}
