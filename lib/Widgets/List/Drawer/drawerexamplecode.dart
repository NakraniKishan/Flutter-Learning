import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class drawerexamplecode extends StatefulWidget {

  @override
  State<drawerexamplecode> createState() => _drawerexamplecodeState();
}

class _drawerexamplecodeState extends State<drawerexamplecode> {
  String code = """
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:trainingdemo/Widgets/List/Drawer/drawerexamplecode.dart';
import 'package:trainingdemo/Widgets/List/List%20Tile/listtileexample.dart';

class drawerexample extends StatefulWidget {

  @override
  State<drawerexample> createState() => _drawerexampleState();
}

class _drawerexampleState extends State<drawerexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => drawerexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      drawer: Drawer(
        // width: 150,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: ListView(

          children: [
            DrawerHeader(
              child: Text("Drawer Header"),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
              ),
            ),
            ListTile(
              title: Text("Kishan Nakrani"),
              subtitle: Text("How are you ?"),
              leading: CircleAvatar(
                child: Text("K"),
              ),
              trailing: Text("11.35am"),
              onTap: (){

                Navigator.of(context).push(

                    PageTransition(
                      child: listtileexample(),
                      type: PageTransitionType.scale,
                      alignment: Alignment.bottomRight,
                      duration: Duration(seconds: 10),
                    )

                  // MaterialPageRoute(builder: (context) => listtileexample(),)
                );



                // Navigator.of(context).push(
                //
                //
                //     PageTransition(
                //   child: studenthome(),
                //   type: PageTransitionType.fade,
                //   alignment: Alignment.center,
                //   duration: Duration(seconds: 1),
                // )
                //   // MaterialPageRoute(builder: (context) => staffhome())
                // );
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              //tileColor: Colors.red,
            ),
            ListTile(
              title: Text("Kishan Nakrani"),
              subtitle: Text("How are you ?"),
              leading: CircleAvatar(
                child: Text("K"),
              ),
              trailing: Text("11.35am"),
              onTap: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              //tileColor: Colors.red,
            ),
            ListTile(
              title: Text("Kishan Nakrani"),
              subtitle: Text("How are you ?"),
              leading: CircleAvatar(
                child: Text("K"),
              ),
              trailing: Text("11.35am"),
              onTap: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              //tileColor: Colors.red,
            ),
            ListTile(
              title: Text("Kishan Nakrani"),
              subtitle: Text("How are you ?"),
              leading: CircleAvatar(
                child: Text("K"),
              ),
              trailing: Text("11.35am"),
              onTap: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              //tileColor: Colors.red,
            ),
            ListTile(
              title: Text("Kishan Nakrani"),
              subtitle: Text("How are you ?"),
              leading: CircleAvatar(
                child: Text("K"),
              ),
              trailing: Text("11.35am"),
              onTap: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              //tileColor: Colors.red,
            ),
            ListTile(
              title: Text("Kishan Nakrani"),
              subtitle: Text("How are you ?"),
              leading: CircleAvatar(
                child: Text("K"),
              ),
              trailing: Text("11.35am"),
              onTap: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              //tileColor: Colors.red,
            ),
            ListTile(
              title: Text("Kishan Nakrani"),
              subtitle: Text("How are you ?"),
              leading: CircleAvatar(
                child: Text("K"),
              ),
              trailing: Text("11.35am"),
              onTap: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              //tileColor: Colors.red,
            ),
            ListTile(
              title: Text("Kishan Nakrani"),
              subtitle: Text("How are you ?"),
              leading: CircleAvatar(
                child: Text("K"),
              ),
              trailing: Text("11.35am"),
              onTap: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              //tileColor: Colors.red,
            ),
            ListTile(
              title: Text("Kishan Nakrani"),
              subtitle: Text("How are you ?"),
              leading: CircleAvatar(
                child: Text("K"),
              ),
              trailing: Text("11.35am"),
              onTap: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              //tileColor: Colors.red,
            ),
            ListTile(
              title: Text("Kishan Nakrani"),
              subtitle: Text("How are you ?"),
              leading: CircleAvatar(
                child: Text("K"),
              ),
              trailing: Text("11.35am"),
              onTap: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              //tileColor: Colors.red,
            ),
            ListTile(
              title: Text("Kishan Nakrani"),
              subtitle: Text("How are you ?"),
              leading: CircleAvatar(
                child: Text("K"),
              ),
              trailing: Text("11.35am"),
              onTap: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              //tileColor: Colors.red,
            ),
            ListTile(
              title: Text("Kishan Nakrani"),
              subtitle: Text("How are you ?"),
              leading: CircleAvatar(
                child: Text("K"),
              ),
              trailing: Text("11.35am"),
              onTap: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              //tileColor: Colors.red,
            ),

          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text("Kishan Nakrani"),
              subtitle: Text("How are you ?"),
              leading: CircleAvatar(
                child: Text("K"),
              ),
              trailing: Text("11.35am"),
              onTap: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              //tileColor: Colors.red,
            ),
            ListTile(
              title: Text("Kishan Nakrani"),
              subtitle: Text("How are you ?"),
              leading: CircleAvatar(
                child: Text("K"),
              ),
              trailing: Text("11.35am"),
              onTap: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              //tileColor: Colors.red,
            ),
            ListTile(
              title: Text("Kishan Nakrani"),
              subtitle: Text("How are you ?"),
              leading: CircleAvatar(
                child: Text("K"),
              ),
              trailing: Text("11.35am"),
              onTap: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              //tileColor: Colors.red,
            ),
            ListTile(
              title: Text("Kishan Nakrani"),
              subtitle: Text("How are you ?"),
              leading: CircleAvatar(
                child: Text("K"),
              ),
              trailing: Text("11.35am"),
              onTap: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              //tileColor: Colors.red,
            ),
            ListTile(
              title: Text("Kishan Nakrani"),
              subtitle: Text("How are you ?"),
              leading: CircleAvatar(
                child: Text("K"),
              ),
              trailing: Text("11.35am"),
              onTap: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              //tileColor: Colors.red,
            ),
            ListTile(
              title: Text("Kishan Nakrani"),
              subtitle: Text("How are you ?"),
              leading: CircleAvatar(
                child: Text("K"),
              ),
              trailing: Text("11.35am"),
              onTap: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              //tileColor: Colors.red,
            ),
            ListTile(
              title: Text("Kishan Nakrani"),
              subtitle: Text("How are you ?"),
              leading: CircleAvatar(
                child: Text("K"),
              ),
              trailing: Text("11.35am"),
              onTap: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              //tileColor: Colors.red,
            ),
            ListTile(
              title: Text("Kishan Nakrani"),
              subtitle: Text("How are you ?"),
              leading: CircleAvatar(
                child: Text("K"),
              ),
              trailing: Text("11.35am"),
              onTap: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              //tileColor: Colors.red,
            ),
            ListTile(
              title: Text("Kishan Nakrani"),
              subtitle: Text("How are you ?"),
              leading: CircleAvatar(
                child: Text("K"),
              ),
              trailing: Text("11.35am"),
              onTap: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              //tileColor: Colors.red,
            ),
            ListTile(
              title: Text("Kishan Nakrani"),
              subtitle: Text("How are you ?"),
              leading: CircleAvatar(
                child: Text("K"),
              ),
              trailing: Text("11.35am"),
              onTap: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              //tileColor: Colors.red,
            ),
            ListTile(
              title: Text("Kishan Nakrani"),
              subtitle: Text("How are you ?"),
              leading: CircleAvatar(
                child: Text("K"),
              ),
              trailing: Text("11.35am"),
              onTap: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              //tileColor: Colors.red,
            ),
            ListTile(
              title: Text("Kishan Nakrani"),
              subtitle: Text("How are you ?"),
              leading: CircleAvatar(
                child: Text("K"),
              ),
              trailing: Text("11.35am"),
              onTap: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              //tileColor: Colors.red,
            ),
          ],
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
        title: Text("Drawer - Code",style: TextStyle(color: Colors.white),),
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
