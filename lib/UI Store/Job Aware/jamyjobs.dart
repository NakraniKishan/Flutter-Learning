import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class jamyjobs extends StatefulWidget {

  @override
  State<jamyjobs> createState() => _jamyjobsState();
}

class _jamyjobsState extends State<jamyjobs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "My Jobs",
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
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (context) => jahome(),
                  // ));
                },
                child: Icon(Icons.home),
              ),
            ),
          ],
        ),


        body: Column(
          children: [
            TabBar(
              labelColor: HexColor("1458AD"),
              tabs: [
                Tab(
                  text: "Saved",
                ),
                Tab(
                  text: "Applied",
                ),
                Tab(
                  text: "Rejected",
                ),
                Tab(
                  text: "Interview",
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    child: ListView(
                      children: [
                        ListTile(
                          //leading: Text("Visual Designer", style: TextStyle(fontWeight: FontWeight.bold),),
                          title: Text(
                            "Visual Designer",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.clear),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text("Netflix"),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Surat, Gujarat"),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Text("Apply Now"),
                                    color: HexColor("1458AD"),
                                    textColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(30)),
                                  ),
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Text("Update Status"),
                                    color: HexColor("#B8D4F8"),
                                    textColor: HexColor("1458AD"),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                color: HexColor("#1458AD"),
                              ),
                            ],
                          ),
                        ),
                        ListTile(
                          //leading: Text("Visual Designer", style: TextStyle(fontWeight: FontWeight.bold),),
                          title: Text(
                            "Visual Designer",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.clear),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text("Netflix"),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Surat, Gujarat"),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Text("Apply Now"),
                                    color: HexColor("1458AD"),
                                    textColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(30)),
                                  ),
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Text("Update Status"),
                                    color: HexColor("#B8D4F8"),
                                    textColor: HexColor("1458AD"),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                color: HexColor("#1458AD"),
                              ),
                            ],
                          ),
                        ),
                        ListTile(
                          //leading: Text("Visual Designer", style: TextStyle(fontWeight: FontWeight.bold),),
                          title: Text(
                            "Visual Designer",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.clear),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text("Netflix"),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Surat, Gujarat"),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Text("Apply Now"),
                                    color: HexColor("1458AD"),
                                    textColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(30)),
                                  ),
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Text("Update Status"),
                                    color: HexColor("#B8D4F8"),
                                    textColor: HexColor("1458AD"),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                color: HexColor("#1458AD"),
                              ),
                            ],
                          ),
                        ),
                        ListTile(
                          //leading: Text("Visual Designer", style: TextStyle(fontWeight: FontWeight.bold),),
                          title: Text(
                            "Visual Designer",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.clear),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text("Netflix"),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Surat, Gujarat"),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Text("Apply Now"),
                                    color: HexColor("1458AD"),
                                    textColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(30)),
                                  ),
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Text("Update Status"),
                                    color: HexColor("#B8D4F8"),
                                    textColor: HexColor("1458AD"),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                color: HexColor("#1458AD"),
                              ),
                            ],
                          ),
                        ),
                        ListTile(
                          //leading: Text("Visual Designer", style: TextStyle(fontWeight: FontWeight.bold),),
                          title: Text(
                            "Visual Designer",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.clear),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text("Netflix"),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Surat, Gujarat"),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Text("Apply Now"),
                                    color: HexColor("1458AD"),
                                    textColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(30)),
                                  ),
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Text("Update Status"),
                                    color: HexColor("#B8D4F8"),
                                    textColor: HexColor("1458AD"),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                color: HexColor("#1458AD"),
                              ),
                            ],
                          ),
                        ),
                        ListTile(
                          //leading: Text("Visual Designer", style: TextStyle(fontWeight: FontWeight.bold),),
                          title: Text(
                            "Visual Designer",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.clear),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text("Netflix"),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Surat, Gujarat"),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Text("Apply Now"),
                                    color: HexColor("1458AD"),
                                    textColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(30)),
                                  ),
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Text("Update Status"),
                                    color: HexColor("#B8D4F8"),
                                    textColor: HexColor("1458AD"),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                color: HexColor("#1458AD"),
                              ),
                            ],
                          ),
                        ),
                        ListTile(
                          //leading: Text("Visual Designer", style: TextStyle(fontWeight: FontWeight.bold),),
                          title: Text(
                            "Visual Designer",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.clear),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text("Netflix"),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Surat, Gujarat"),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Text("Apply Now"),
                                    color: HexColor("1458AD"),
                                    textColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(30)),
                                  ),
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Text("Update Status"),
                                    color: HexColor("#B8D4F8"),
                                    textColor: HexColor("1458AD"),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                color: HexColor("#1458AD"),
                              ),
                            ],
                          ),
                        ),
                        ListTile(
                          //leading: Text("Visual Designer", style: TextStyle(fontWeight: FontWeight.bold),),
                          title: Text(
                            "Visual Designer",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.clear),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text("Netflix"),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Surat, Gujarat"),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Text("Apply Now"),
                                    color: HexColor("1458AD"),
                                    textColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(30)),
                                  ),
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Text("Update Status"),
                                    color: HexColor("#B8D4F8"),
                                    textColor: HexColor("1458AD"),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                color: HexColor("#1458AD"),
                              ),
                            ],
                          ),
                        ),
                        ListTile(
                          //leading: Text("Visual Designer", style: TextStyle(fontWeight: FontWeight.bold),),
                          title: Text(
                            "Visual Designer",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.clear),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text("Netflix"),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Surat, Gujarat"),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Text("Apply Now"),
                                    color: HexColor("1458AD"),
                                    textColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(30)),
                                  ),
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Text("Update Status"),
                                    color: HexColor("#B8D4F8"),
                                    textColor: HexColor("1458AD"),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                color: HexColor("#1458AD"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text("Applied Jobs"),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text("Rejected Jobs"),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text("Interview Jobs"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
