import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trainingdemo/UI%20Store/Job%20Aware/jalogin.dart';

class jaonboard extends StatefulWidget {

  @override
  State<jaonboard> createState() => _jaonboardState();
}

class _jaonboardState extends State<jaonboard> {
  PageController PgCon = new PageController();
  bool onlastpage = false;
  void initState(){
    super.initState();
    checkonboard();
  }

  void checkonboard() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.containsKey("jobawarelogin")) {
      Navigator.of(context).pop();
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => jalogin(),)
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        alignment: Alignment(0, 0.9),
        children: [
          PageView(
            controller: PgCon,
            onPageChanged: (index){
              setState((){
                onlastpage =  (index == 2);
              });
            },
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 320,
                      width: 350,
                      //color: Colors.red,
                      child: Image.asset("assets/UIStore/images/onboard1.png"),
                    ),
                    //Image.asset("assets/images/onboard1.png"),
                    Container(
                      height: 300,
                      width: 325,
                      //color: HexColor("#1458AD"),
                      decoration: BoxDecoration(
                        color: HexColor("#1458AD"),
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 60,
                          ),
                          Text(
                            "Find Your Next Job",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20),
                          ),
                          SizedBox(
                            height: 85,
                          ),
                          GestureDetector(
                            onTap: () {
                              PgCon.nextPage(duration: Duration(milliseconds: 500), curve: Curves.ease);
                            },
                            child: Container(
                              height: 70,
                              width: 200,
                              //color: HexColor("#FFFFFF"),
                              decoration: BoxDecoration(
                                color: HexColor("#FFFFFF"),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(80),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Next",
                                  style: TextStyle(color: Colors.black, fontSize: 30),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 320,
                      width: 350,
                      //color: Colors.red,
                      child: Image.asset("assets/UIStore/images/onboard2.png"),
                    ),
                    //Image.asset("assets/images/onboard2.png"),
                    Container(
                      height: 300,
                      width: 325,
                      //color: HexColor("#1458AD"),
                      decoration: BoxDecoration(
                        color: HexColor("#1458AD"),
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 60,
                          ),
                          Text("Build Your network", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                          Text("on the go", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                          SizedBox(
                            height: 65,
                          ),
                          GestureDetector(
                            onTap: (){
                              PgCon.nextPage(duration: Duration(milliseconds: 500), curve: Curves.ease);
                            },
                            child: Container(
                              height: 70,
                              width: 200,
                              //color: HexColor("#FFFFFF"),
                              decoration: BoxDecoration(
                                color: HexColor("#FFFFFF"),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(80),
                                ),
                              ),
                              child: Center(
                                child: Text("Next", style: TextStyle(color: Colors.black, fontSize: 30),),
                              ),
                            ),
                          ),
                        ],
                      ),

                    ),

                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 320,
                      width: 350,
                      //color: Colors.red,
                      child: Image.asset("assets/UIStore/images/onboard3.png"),
                    ),
                    //Image.asset("assets/images/onboard2.png"),
                    Container(
                      height: 300,
                      width: 325,
                      //color: HexColor("#1458AD"),
                      decoration: BoxDecoration(
                        color: HexColor("#1458AD"),
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 60,
                          ),
                          Text("Get a good start in", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                          Text("your career", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                          SizedBox(
                            height: 65,
                          ),
                          GestureDetector(
                            onTap: () async {
                              SharedPreferences prefs = await SharedPreferences.getInstance();
                              prefs.setString("jobawarelogin", "yes").then((value) {
                              Navigator.of(context).pop();
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) => jalogin(),)
                                  );
                              }
                              );
                            },
                            child: Container(
                              height: 70,
                              width: 200,
                              //color: HexColor("#FFFFFF"),
                              decoration: BoxDecoration(
                                color: HexColor("#FFFFFF"),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(80),
                                ),
                              ),
                              child: Center(
                                child: Text("Done", style: TextStyle(color: Colors.black, fontSize: 30),),
                              ),
                            ),
                          ),
                        ],
                      ),

                    ),
                  ],
                ),
              ),
            ],
          ),

          //SmoothPageIndicator(controller: PgCon, count: 3),

          Container(
            alignment: Alignment(0,0.9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    PgCon.jumpToPage(2);
                  },
                  child: Text("Skip"),
                ),
                SmoothPageIndicator(
                  controller: PgCon,
                  count: 3,
                ),

                Text(""),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
