import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class listtileexamplecode extends StatefulWidget {

  @override
  State<listtileexamplecode> createState() => _listtileexamplecodeState();
}

class _listtileexamplecodeState extends State<listtileexamplecode> {
  String code = """
import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/List%20Tile/listtileexamplecode.dart';
import 'package:trainingdemo/Widgets/List/Registration/Registration.dart';

class listtileexample extends StatefulWidget {

  @override
  State<listtileexample> createState() => _listtileexampleState();
}

class _listtileexampleState extends State<listtileexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Tile View"),
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
                title: Text("Kishan Nakrani"),
              ),
              ListTile(
                title: Text("Kishan Nakrani"),
                subtitle: Text("How are you ?"),

              ),
              ListTile(
                leading: Text("K"),
                title: Text("Kishan Nakrani"),
                subtitle: Text("How are you ?"),

              ),
              ListTile(
                leading: CircleAvatar(
                  child: Text("K"),
                ),
                title: Text("Kishan Nakrani"),
                subtitle: Text("How are you ?"),

              ),
              ListTile(
                leading: CircleAvatar(
                  child: Text("K"),
                ),
                title: Text("Kishan Nakrani"),
                subtitle: Text("How are you ?"),

                trailing: Text("11.35am"),

              ),
              ListTile(
                leading: CircleAvatar(
                  child: Image.asset("assets/Widgets/List/ListTile/image1.jpg"),
                ),
                title: Text("Kishan Nakrani"),
                subtitle: Text("Image is set as Child in Circle Avatar"),

                trailing: Text("11.35am"),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/Widgets/List/ListTile/image1.jpg"),
                  // child: Image.asset("assets/Widgets/List/ListTile/image1.jpg"),
                ),
                title: Text("Kishan Nakrani"),
                subtitle: Text("Image is set as Background Image in Circle Avatar"),

                trailing: Text("11.35am"),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/Widgets/List/ListTile/image2.jpg"),
                  // child: Image.asset("assets/Widgets/List/ListTile/image1.jpg"),
                ),
                title: Text("Kishan Nakrani"),
                subtitle: Text("Image is set as Background Image in Circle Avatar"),

                trailing: Text("11.35am"),
                tileColor: Colors.red,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/Widgets/List/ListTile/image3.jpg"),
                  // child: Image.asset("assets/Widgets/List/ListTile/image1.jpg"),
                ),
                title: Text("Kishan Nakrani"),
                subtitle: Text("Image is set as Background Image in Circle Avatar"),

                trailing: Text("11.35am"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                tileColor: Colors.red,
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Kishan Nakrani"),
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
                title: Text("Kishan Nakrani"),
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
                title: Text("Kishan Nakrani"),
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
                title: Text("Kishan Nakrani"),
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
                title: Text("Kishan Nakrani"),
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
                title: Text("Kishan Nakrani"),
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
                title: Text("Kishan Nakrani"),
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
                title: Text("Kishan Nakrani"),
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
                title: Text("Kishan Nakrani"),
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
                title: Text("Kishan Nakrani"),
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
                title: Text("Kishan Nakrani"),
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




""";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("List Tile View - Code",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: IconButton(
                onPressed: () {
                  Clipboard.setData(new ClipboardData(text: code))
                      .then((value) {
                    // key.currentState.showSnackBar(SnackBar(
                    //   content: new Text("Copied to Clipboard"),
                    // ));
                  });
                },
                icon: Icon(Icons.copy)),
          ),
        ],
      ),

      body:  SyntaxView(
        code: code,
        syntax: Syntax.DART,
        expanded: true,
        syntaxTheme: SyntaxTheme.gravityDark(),
        fontSize: 12.0,
        withZoom: false,
        withLinesCount: false,
      ),
    );
  }
}
