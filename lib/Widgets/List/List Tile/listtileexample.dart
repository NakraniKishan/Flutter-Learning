import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/List%20Tile/listtileexamplecode.dart';

class listtileexample extends StatefulWidget {

  @override
  State<listtileexample> createState() => _listtileexampleState();
}

class _listtileexampleState extends State<listtileexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("List Tile View",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => listtileexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                title: Text("Dharmik Patel"),
              ),
              ListTile(
                title: Text("Kush Desai"),
                subtitle: Text("How are you ?"),

              ),
              ListTile(
                leading: Text("J"),
                title: Text("Jay Gandhi"),
                subtitle: Text("How are you ?"),

              ),
              ListTile(
                leading: CircleAvatar(
                  child: Text("A"),
                ),
                title: Text("Abhishek Gupta"),
                subtitle: Text("How are you ?"),

              ),
              ListTile(
                leading: CircleAvatar(
                  child: Text("M"),
                ),
                title: Text("Meet Mehta"),
                subtitle: Text("How are you ?"),

                trailing: Text("11.35am"),

              ),
              ListTile(
                leading: CircleAvatar(
                  child: Image.asset("assets/Widgets/List/ListTile/image1.jpg"),
                ),
                title: Text("Viraj Rana"),
                subtitle: Text("Image is set as Child in Circle Avatar"),

                trailing: Text("11.35am"),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/Widgets/List/ListTile/image1.jpg"),
                  // child: Image.asset("assets/Widgets/List/ListTile/image1.jpg"),
                ),
                title: Text("Darshan Bhatiya"),
                subtitle: Text("Image is set as Background Image in Circle Avatar"),

                trailing: Text("11.35am"),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/Widgets/List/ListTile/image2.jpg"),
                  // child: Image.asset("assets/Widgets/List/ListTile/image1.jpg"),
                ),
                title: Text("Bhargav Chandigada"),
                subtitle: Text("Image is set as Background Image in Circle Avatar"),

                trailing: Text("11.35am"),
                tileColor: Colors.red,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/Widgets/List/ListTile/image3.jpg"),
                  // child: Image.asset("assets/Widgets/List/ListTile/image1.jpg"),
                ),
                title: Text("Denish Surti"),
                subtitle: Text("Image is set as Background Image in Circle Avatar"),

                trailing: Text("11.35am"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                tileColor: Colors.red,
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Raj Patel"),
                subtitle: Text("Image is set as Background Image in Circle Avatar"),

                trailing: Text("11.35am"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                tileColor: Colors.red,
                iconColor: Colors.white,
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Harshil Kosambi"),
                subtitle: Text("Image is set as Background Image in Circle Avatar"),

                trailing: Text("11.35am"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                tileColor: Colors.red,
                iconColor: Colors.white,
                onTap: (){},
                splashColor: Colors.yellow,
                ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Dhaval Nariyel"),
                subtitle: Text("Image is set as Background Image in Circle Avatar"),

                trailing: Text("11.35am"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                tileColor: Colors.red,
                iconColor: Colors.white,
                onTap: (){},
                splashColor: Colors.yellow,
                textColor: Colors.yellow,
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Mrunal"),
                subtitle: Text("Image is set as Background Image in Circle Avatar"),

                trailing: Text("11.35am"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                tileColor: Colors.red,
                iconColor: Colors.white,
                onTap: (){},
                splashColor: Colors.yellow,
                textColor: Colors.yellow,
                enabled: false,
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Deep Shah"),
                subtitle: Text("Image is set as Background Image in Circle Avatar"),

                trailing: Text("11.35am"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                tileColor: Colors.red,
                iconColor: Colors.white,
                onTap: (){},
                splashColor: Colors.yellow,
                textColor: Colors.yellow,
                dense: true,
                
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Kartik Gupte"),
                subtitle: Text("Image is set as Background Image in Circle Avatar"),

                trailing: Text("11.35am"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                tileColor: Colors.red,
                iconColor: Colors.white,
                onTap: (){},
                splashColor: Colors.yellow,
                textColor: Colors.yellow,
                contentPadding: EdgeInsets.all(5),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Shreya Lalwani"),
                subtitle: Text("Image is set as Background Image in Circle Avatar"),

                trailing: Text("11.35am"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                tileColor: Colors.red,
                iconColor: Colors.white,
                onTap: (){},
                splashColor: Colors.yellow,
                textColor: Colors.yellow,
                contentPadding: EdgeInsets.all(5),
                minLeadingWidth: 30,
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Harsh Geewala"),
                subtitle: Text("Image is set as Background Image in Circle Avatar"),

                trailing: Text("11.35am"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                tileColor: Colors.red,
                iconColor: Colors.white,
                onTap: (){},
                splashColor: Colors.yellow,
                textColor: Colors.yellow,
                contentPadding: EdgeInsets.all(5),
                minLeadingWidth: 70,
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Rimal"),
                subtitle: Text("Image is set as Background Image in Circle Avatar"),

                trailing: Text("11.35am"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                tileColor: Colors.red,
                iconColor: Colors.white,
                onTap: (){},
                splashColor: Colors.yellow,
                textColor: Colors.yellow,
                contentPadding: EdgeInsets.all(5),
                minLeadingWidth: 30,
                titleAlignment: ListTileTitleAlignment.top,
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Karan gaudi"),
                subtitle: Text("Image is set as Background Image in Circle Avatar"),

                trailing: Text("11.35am"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                tileColor: Colors.red,
                iconColor: Colors.white,
                onTap: (){},
                splashColor: Colors.yellow,
                textColor: Colors.yellow,
                contentPadding: EdgeInsets.all(5),
                minLeadingWidth: 30,
                titleAlignment: ListTileTitleAlignment.bottom,
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Vishnu Gami"),
                subtitle: Text("Image is set as Background Image in Circle Avatar"),

                trailing: Text("11.35am"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),

                ),
                tileColor: Colors.red,
                iconColor: Colors.white,
                onTap: (){},
                splashColor: Colors.yellow,
                textColor: Colors.yellow,
                contentPadding: EdgeInsets.all(5),
                minLeadingWidth: 30,
                titleAlignment: ListTileTitleAlignment.top,

              ),
            ],
          ),
        ),
      ),
    );
  }
}
