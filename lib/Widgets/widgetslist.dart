import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/Alert%20Dialog%20Box/alertdialogexample.dart';
import 'package:trainingdemo/Widgets/List/Button/buttonexample.dart';
import 'package:trainingdemo/Widgets/List/Card/cardexample.dart';
import 'package:trainingdemo/Widgets/List/Circle%20Avatar/circleavatarexample.dart';
import 'package:trainingdemo/Widgets/List/Container/containerexample.dart';
import 'package:trainingdemo/Widgets/List/Divider/dividerexample.dart';
import 'package:trainingdemo/Widgets/List/Expansion%20Tile/expansiontileexample.dart';
import 'package:trainingdemo/Widgets/List/Gesture%20Detector/gesturedetectorexample.dart';
import 'package:trainingdemo/Widgets/List/Hero/heroexample.dart';
import 'package:trainingdemo/Widgets/List/Image/imageexample.dart';
import 'package:trainingdemo/Widgets/List/Media%20Query/mediaqueryexample.dart';
import 'package:trainingdemo/Widgets/List/Page%20View/pageviewexample.dart';
import 'package:trainingdemo/Widgets/List/Position/positionexample.dart';
import 'package:trainingdemo/Widgets/List/Reg%20EXP/regexpexample.dart';
import 'package:trainingdemo/Widgets/List/Registration/Registration.dart';
import 'package:trainingdemo/Widgets/List/Custom%20Appbar/customappbar.dart';
import 'package:trainingdemo/Widgets/List/Drawer/drawerexample.dart';
import 'package:trainingdemo/Widgets/List/Icon/iconexample.dart';
import 'package:trainingdemo/Widgets/List/List%20Tile/listtileexample.dart';
import 'package:trainingdemo/Widgets/List/List%20View%20Builder/listviewbuilder.dart';
import 'package:trainingdemo/Widgets/List/SliverAppBar/silverappbarlist.dart';
import 'package:trainingdemo/Widgets/List/Snack%20Bar/snackbarexample.dart';
import 'package:trainingdemo/Widgets/List/Stack/stackexample.dart';
import 'package:trainingdemo/Widgets/List/Tab%20View/tabviewexample.dart';
import 'package:trainingdemo/Widgets/List/Text%20Field/textfieldexample.dart';
import 'package:trainingdemo/Widgets/List/Text/textexample.dart';

class widgetslist extends StatefulWidget {

  @override
  State<widgetslist> createState() => _widgetslistState();
}

class _widgetslistState extends State<widgetslist> {
  List names = ["Text","Image","Icon","Button","Container","Card","Circle Avatar","Text Field","Custom AppBar","Drawer","List Tile","Expansion Tile","Divider","Registration","ListView Builder","Tab View","Gesture Detector","Media Query","Stack","Snack Bar","Page View","Alert Dialog Box",
  "Regular Expression","Hero","Position","SilverAppbar"];
  List filename = [
    textexample(),
    imageexample(),
    iconexample(),
    buttonexample(),
    containerexample(),
    cardexample(),
    circleavatarexample(),
    textfieldexample(),
    customappbar(),
    drawerexample(),
    listtileexample(),
    expansiontileexample(),
    dividerexample(),
    Registration(),
    listviewbuilder(),
    tabviewexample(),
    gesturedetectorexample(),
    mediaqueryexample(),
    stackexample(),
    snackbarexample(),
    pageviewexample(),
    alertdialogexample(),
    regexpexample(),
    heroexample(),
    positionexample(),
    // silverappbarexample(),
    silverappbarlist(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Widgets",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 10),
        child: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context,index){
              return ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => filename[index],
                  ));
                },
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.token,color: Colors.white,),
                ),
                //subtitle: Text(""),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black,
                ),
                title: Text(names[index]),
                // subtitle: Text("Kishan"),
              );
            }
        ),
      ),

    );
  }
}
