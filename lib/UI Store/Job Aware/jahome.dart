import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trainingdemo/UI%20Store/Job%20Aware/jajobdetail.dart';
import 'package:trainingdemo/UI%20Store/Job%20Aware/jajobsearch.dart';
import 'package:trainingdemo/UI%20Store/Job%20Aware/jamyjobs.dart';
import 'package:trainingdemo/UI%20Store/Job%20Aware/janotification.dart';
import 'package:trainingdemo/UI%20Store/Job%20Aware/jasetting.dart';
import 'package:trainingdemo/UI%20Store/Job%20Aware/jaupdatecontactinformation.dart';

class jahome extends StatefulWidget {

  @override
  State<jahome> createState() => _jahomeState();
}

class _jahomeState extends State<jahome> {
  var _sckey = GlobalKey<ScaffoldState>();
  var crntdx = 0;
  PageController PgCon = new PageController();
  void checkonboard() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.containsKey("jobawarelogin")) {

      prefs.clear().then((value) {

        Navigator.of(context).pop();
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: HexColor("#E8F4FF"),
      key: _sckey,
      endDrawer: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
        ),
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: HexColor("1458AD"),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1556157382-97eda2d62296?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Ankit Daiya",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.black,
              ),
              title: Text(
                "Profile",
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.search,
                color: Colors.black,
              ),
              title: Text(
                "Search",
                style: TextStyle(fontSize: 15),
              ),
              onTap: () {
                _sckey.currentState?.closeEndDrawer();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => jajobsearch(),
                ));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.cases_rounded,
                color: Colors.black,
              ),
              title: Text(
                "Latest Jobs",
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.bookmark,
                color: Colors.black,
              ),
              title: Text(
                "My Jobs",
                style: TextStyle(fontSize: 15),
              ),
              onTap: () {
                _sckey.currentState?.closeEndDrawer();
                // Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => jamyjobs(),
                ));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: Text(
                "Settings",
                style: TextStyle(fontSize: 15),
              ),
              onTap: () {
                _sckey.currentState?.closeEndDrawer();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => jasetting(),
                ));
              },
            ),
            ListTile(
              onTap: () {
                _sckey.currentState?.closeEndDrawer();
                checkonboard();
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => jalogin(),
                // ));
              },
              leading: Icon(
                Icons.output,
                color: Colors.black,
              ),
              title: Text(
                "Logout",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leading: Image.asset(
          'assets/UIStore/images/logo1.png',
        ),
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              "Jobs",
              style: TextStyle(
                color: HexColor("1458AD"),
              ),
            ),
            Text(
              " Aware",
              style: TextStyle(
                color: HexColor("B8D4F8"),
              ),
            ),
          ],
        ),
        automaticallyImplyLeading: false,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => janotification(),
              ));
            },
            child: Icon(
              Icons.notifications,
              color: HexColor("1458AD"),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              icon: Icon(
                Icons.more_vert_rounded,
                color: HexColor("1458AD"),
              ), onPressed: () { _sckey.currentState?.openEndDrawer(); },
            ),
          )
        ],
      ),
      body: PageView(
        controller: PgCon,
        onPageChanged: (index) {
          setState(() {
            crntdx = index;
          });
        },
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => jajobsearch(),
                    ));
                  },
                  child: Container(
                    height: 61,
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.green,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      border: Border.all(
                        color: HexColor("1458AD"),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  // child: TextFormField(
                  //   decoration: InputDecoration(
                  //     labelText: "Search",
                  //     prefixIcon: Icon(Icons.search),
                  //     border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.only(
                  //             topLeft: Radius.circular(30),
                  //             topRight: Radius.circular(30))),
                  //   ),
                  // ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => jajobsearch(),
                    ));
                  },
                  child: Container(
                    height: 61,
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.green,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      border: Border.all(
                        color: HexColor("1458AD"),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Location",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  // child: TextFormField(
                  //   decoration: InputDecoration(
                  //     hintText: "Location",
                  //     prefixIcon: Icon(Icons.location_on),
                  //     border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.only(
                  //             bottomLeft: Radius.circular(30),
                  //             bottomRight: Radius.circular(30))),
                  //   ),
                  // ),
                ),
                SizedBox(
                  height: 15,
                ),
                // Text(
                //   "Job Recommendation",
                //   style: TextStyle(
                //     fontSize: 20,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                Text(
                  "Latest Job",
                  style: GoogleFonts.alike(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: HexColor("1458AD"),
                            borderRadius:
                            BorderRadius.all(Radius.circular(15))),
                        //color: Colors.red,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "All Jobs",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),

                      // MaterialButton(
                      //   onPressed: (){},
                      //   color: Colors.white,
                      //   child: Text("Android Developer"),
                      //   textColor: HexColor("1458Ad"),
                      // ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          border: Border.all(
                            color: HexColor("1458AD"),
                          ),
                        ),
                        //color: Colors.red,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "Android Developer",
                            style: TextStyle(color: HexColor("1458AD")),
                          ),
                        ),
                      ),

                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          border: Border.all(
                            color: HexColor("1458AD"),
                          ),
                        ),
                        //color: Colors.red,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "Product Designer",
                            style: TextStyle(color: HexColor("1458AD")),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: HexColor("1458AD"),
                            borderRadius:
                            BorderRadius.all(Radius.circular(15))),
                        //color: Colors.red,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "Creative Designer",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: HexColor("1458AD"),
                            borderRadius:
                            BorderRadius.all(Radius.circular(15))),
                        //color: Colors.red,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "Art Director",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: HexColor("1458AD"),
                            borderRadius:
                            BorderRadius.all(Radius.circular(15))),
                        //color: Colors.red,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "Front-End Developer",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: HexColor("1458AD"),
                            borderRadius:
                            BorderRadius.all(Radius.circular(15))),
                        //color: Colors.red,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "Visual Designer",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: HexColor("1458AD"),
                            borderRadius:
                            BorderRadius.all(Radius.circular(15))),
                        //color: Colors.red,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "UI Designer",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: HexColor("1458AD"),
                            borderRadius:
                            BorderRadius.all(Radius.circular(15))),
                        //color: Colors.red,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "Web Developer",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    child: ListView(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => jajobdetail()));
                          },
                          child: Card(
                            color: HexColor("#E8F4FF"),
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                            child: ListTile(
                              // title: Text("Visual Designer"),
                              title: Text(
                                "Visual Designer",
                                style: GoogleFonts.daysOne(),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/UIStore/images/salary.png",
                                        height: 22,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("20,000 - 40,000"),
                                    ],
                                  ),
                                  Text("Netflix"),
                                  Text("Full-Time   Day Shift"),
                                  Text("Surat, Gujarat"),
                                ],
                              ),
                              leading: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                child: Image.asset(
                                  "assets/UIStore/images/netflix.png",
                                ),
                              ),
                              trailing: Image.asset(
                                "assets/UIStore/images/bookmark.png",
                                height: 20,
                                alignment: Alignment.topRight,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          color: HexColor("#E8F4FF"),
                          elevation: 5,
                          child: ListTile(
                            title: Text("UI Designer"),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/UIStore/images/salary.png",
                                      height: 22,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("2000 - 4000"),
                                  ],
                                ),
                                Text("Linkedin"),
                                Text("Part-Time   Day Shift"),
                                Text("Surat, Gujarat"),
                              ],
                            ),
                            leading: CircleAvatar(
                              child: Image.asset(
                                "assets/UIStore/images/linkedin.png",
                              ),
                            ),
                            trailing: Image.asset(
                              "assets/UIStore/images/bookmark.png",
                              height: 20,
                              alignment: Alignment.topRight,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                        ),
                        Card(
                          color: HexColor("#E8F4FF"),
                          elevation: 5,
                          child: ListTile(
                            title: Text("Product Designer"),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/UIStore/images/salary.png",
                                      height: 22,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("5000 - 10,000"),
                                  ],
                                ),
                                Text("Instagram"),
                                Text("Full-Time   Day Shift"),
                                Text("Ahmedabad, Gujarat"),
                              ],
                            ),
                            leading: CircleAvatar(
                              child: Image.asset(
                                "assets/UIStore/images/instagram.png",
                              ),
                            ),
                            trailing: Image.asset(
                              "assets/UIStore/images/bookmark.png",
                              height: 20,
                              alignment: Alignment.topRight,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                        ),
                        Card(
                          color: HexColor("#E8F4FF"),
                          elevation: 5,
                          child: ListTile(
                            title: Text("UX Designer"),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/UIStore/images/salary.png",
                                      height: 22,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("10,000 - 12,000"),
                                  ],
                                ),
                                Text("Twitter"),
                                Text("Full-Time   Day Shift"),
                                Text("Surat, Gujarat"),
                              ],
                            ),
                            leading: CircleAvatar(
                              child: Image.asset(
                                "assets/UIStore/images/twitter.png",
                              ),
                            ),
                            trailing: Image.asset(
                              "assets/UIStore/images/bookmark.png",
                              height: 20,
                              alignment: Alignment.topRight,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                        ),
                        Card(
                          color: HexColor("#E8F4FF"),
                          elevation: 5,
                          child: ListTile(
                            title: Text("Visual Designer"),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/UIStore/images/salary.png",
                                      height: 22,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("12,000 - 15,000"),
                                  ],
                                ),
                                Text("Airbnb"),
                                Text("Full-Time   Day Shift"),
                                Text("Surat, Gujarat"),
                              ],
                            ),
                            leading: CircleAvatar(
                              child: Image.asset(
                                "assets/UIStore/images/airbnb.png",
                              ),
                            ),
                            trailing: Image.asset(
                              "assets/UIStore/images/bookmark.png",
                              height: 20,
                              alignment: Alignment.topRight,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                        ),
                        Card(
                          color: HexColor("#E8F4FF"),
                          elevation: 5,
                          child: ListTile(
                            title: Text("Delivery Boy"),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/UIStore/images/salary.png",
                                      height: 22,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("15,000 - 17,000"),
                                  ],
                                ),
                                Text("Swiggy"),
                                Text("Full-Time   Day Shift"),
                                Text("Surat, Gujarat"),
                              ],
                            ),
                            leading: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: Image.asset(
                                "assets/UIStore/images/swiggy.png",
                              ),
                            ),
                            trailing: Image.asset(
                              "assets/UIStore/images/bookmark.png",
                              height: 20,
                              alignment: Alignment.topRight,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: HexColor("1458AD"),
                            borderRadius:
                            BorderRadius.all(Radius.circular(15))),
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "All",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          border: Border.all(
                            color: HexColor("1458AD"),
                          ),
                        ),
                        //color: Colors.red,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "Accepted",
                            style: TextStyle(color: HexColor("1458AD")),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          border: Border.all(
                            color: HexColor("1458AD"),
                          ),
                        ),
                        //color: Colors.red,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "Rejected",
                            style: TextStyle(color: HexColor("1458AD")),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          border: Border.all(
                            color: HexColor("1458AD"),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "Interview",
                            style: TextStyle(color: HexColor("1458AD")),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          border: Border.all(
                            color: HexColor("1458AD"),
                          ),
                        ),
                        //color: Colors.red,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "Selected",
                            style: TextStyle(color: HexColor("1458AD")),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    child: ListView(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => jajobdetail()));
                          },
                          child: Card(
                            color: HexColor("#E8F4FF"),
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                            child: ListTile(
                              title: Text("Visual Designer"),
                              subtitle: Column(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            "assets/UIStore/images/salary.png",
                                            height: 22,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text("20,000 - 40,000"),
                                        ],
                                      ),
                                      Text("Netflix"),
                                      Text("Full-Time   Day Shift"),
                                    ],
                                  ),
                                  Text(
                                    "Application Sent",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                              leading: CircleAvatar(
                                child: Image.asset(
                                  "assets/UIStore/images/netflix.png",
                                ),
                              ),
                              trailing: Image.asset(
                                "assets/UIStore/images/bookmark.png",
                                height: 20,
                                alignment: Alignment.topRight,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          color: HexColor("#E8F4FF"),
                          elevation: 5,
                          child: ListTile(
                            title: Text("UI Designer"),
                            subtitle: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/UIStore/images/salary.png",
                                          height: 22,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("2000 - 4000"),
                                      ],
                                    ),
                                    Text("Linkedin"),
                                    Text("Part-Time   Day Shift"),
                                  ],
                                ),
                                Text(
                                  "Application Viewed",
                                  style: TextStyle(color: HexColor("#E48900")),
                                ),
                              ],
                            ),
                            leading: CircleAvatar(
                              child: Image.asset(
                                "assets/UIStore/images/linkedin.png",
                              ),
                            ),
                            trailing: Image.asset(
                              "assets/UIStore/images/bookmark.png",
                              height: 20,
                              alignment: Alignment.topRight,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                        ),
                        Card(
                          color: HexColor("#E8F4FF"),
                          elevation: 5,
                          child: ListTile(
                            title: Text("Product Designer"),
                            subtitle: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/UIStore/images/salary.png",
                                          height: 22,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("5000 - 10,000"),
                                      ],
                                    ),
                                    Text("Instagram"),
                                    Text("Full-Time   Day Shift"),
                                  ],
                                ),
                                Text(
                                  "Rejected",
                                  style: TextStyle(color: HexColor("#FF0000")),
                                ),
                              ],
                            ),
                            leading: CircleAvatar(
                              child: Image.asset(
                                "assets/UIStore/images/instagram.png",
                              ),
                            ),
                            trailing: Image.asset(
                              "assets/UIStore/images/bookmark.png",
                              height: 20,
                              alignment: Alignment.topRight,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                        ),
                        Card(
                          color: HexColor("#E8F4FF"),
                          elevation: 5,
                          child: ListTile(
                            title: Text("UX Designer"),
                            subtitle: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/UIStore/images/salary.png",
                                          height: 22,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("10,000 - 12,000"),
                                      ],
                                    ),
                                    Text("Twitter"),
                                    Text("Full-Time   Day Shift"),
                                  ],
                                ),
                                Text(
                                  "Interview",
                                  style: TextStyle(color: HexColor("#32CD32")),
                                ),
                              ],
                            ),
                            leading: CircleAvatar(
                              child: Image.asset(
                                "assets/UIStore/images/twitter.png",
                              ),
                            ),
                            trailing: Image.asset(
                              "assets/UIStore/images/bookmark.png",
                              height: 20,
                              alignment: Alignment.topRight,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                        ),
                        Card(
                          color: HexColor("#E8F4FF"),
                          elevation: 5,
                          child: ListTile(
                            title: Text("Visual Designer"),
                            subtitle: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/UIStore/images/salary.png",
                                          height: 22,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("12,000 - 15,000"),
                                      ],
                                    ),
                                    Text("Airbnb"),
                                    Text("Full-Time   Day Shift"),
                                  ],
                                ),
                                Text(
                                  "Selected",
                                  style: TextStyle(color: HexColor("#1458AD")),
                                ),
                              ],
                            ),
                            leading: CircleAvatar(
                              child: Image.asset(
                                "assets/UIStore/images/airbnb.png",
                              ),
                            ),
                            trailing: Image.asset(
                              "assets/UIStore/images/bookmark.png",
                              height: 20,
                              alignment: Alignment.topRight,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                        ),
                        Card(
                          color: HexColor("#E8F4FF"),
                          elevation: 5,
                          child: ListTile(
                            title: Text("Delivery Boy"),
                            subtitle: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/UIStore/images/salary.png",
                                          height: 22,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("15,000 - 17,000"),
                                      ],
                                    ),
                                    Text("Swiggy"),
                                    Text("Full-Time   Day Shift"),
                                  ],
                                ),
                                Text(
                                  "Application Sent",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                            leading: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: Image.asset(
                                "assets/UIStore/images/swiggy.png",
                              ),
                            ),
                            trailing: Image.asset(
                              "assets/UIStore/images/bookmark.png",
                              height: 20,
                              alignment: Alignment.topRight,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),

          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1556157382-97eda2d62296?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Kishan Nakrani",
                          style: TextStyle(fontSize: 21),
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_pin),
                            Text(
                              "Surat, Gujarat",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      border: Border.all(
                        color: HexColor("B8D4F8"),
                      )),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Resume",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.edit),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.contact_page_rounded,
                            size: 50,
                            color: HexColor("1458AD"),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Jobs Aware Resume"),
                              Text("Updated 20/1/2022"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      border: Border.all(
                        color: HexColor("B8D4F8"),
                      )),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Last Uploaded File",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.more_vert_rounded),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(

                        children: [
                          Icon(
                            Icons.picture_as_pdf,
                            size: 50,
                            color: HexColor("1458AD"),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text("Upload Resume"),
                              Text("No Resume"),
                            ],
                          ),


                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      border: Border.all(
                        color: HexColor("B8D4F8"),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Contact Information",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) => jaupdatecontactinformation(),)
                                );
                              },
                              child: Icon(Icons.edit)
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Enter Your Name / Kishan Nakrani"),
                      Text("abc***00@gmail.com"),
                      Text("Enter Phone Number / +91 75*** ***00"),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: crntdx,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.blue,
          onTap: (index) {
            setState(() {
              crntdx = index;
              PgCon.jumpToPage(crntdx);
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.send,
              ),
              label: "Applies",

            ),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: "Inbox"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),

    );
  }
}
