import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class starratingexamplecode extends StatefulWidget {

  @override
  State<starratingexamplecode> createState() => _starratingexamplecodeState();
}

class _starratingexamplecodeState extends State<starratingexamplecode> {
  String code = """


import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:trainingdemo/Dependencies/List/Star%20Rating/Flutter%20Star%20Rating/starratingexamplecode.dart';

class starratingexample extends StatefulWidget {

  @override
  State<starratingexample> createState() => _starratingexampleState();
}

class _starratingexampleState extends State<starratingexample> {
  double value = 3.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Star Rating"),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => starratingexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(),
        RatingStars(
        value: value,
        onValueChanged: (v) {
          //
          setState(() {
            value = v;
          });
          print(value);
        },
        starBuilder: (index, color) => Icon(
          // Icons.ac_unit_outlined,
          Icons.home,
          color: color,
        ),
        starCount: 5,
        starSize: 30,
        valueLabelColor:  Color(0xff9b9b9b),
        valueLabelTextStyle:  TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: 12.0),
        valueLabelRadius: 10,
        maxValue: 5,
        starSpacing: 2,
        maxValueVisibility: true,
        valueLabelVisibility: true,
        animationDuration: Duration(milliseconds: 1000),
        valueLabelPadding:
        const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
        valueLabelMargin: const EdgeInsets.only(right: 8),
        starOffColor: const Color(0xffe7e8ea),
        starColor: Colors.black,
      ),

        ],
      )
    );
  }
}





""";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Star rating - Code",style: TextStyle(color: Colors.white),),
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
