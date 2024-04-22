import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class shimmerexamplecode extends StatefulWidget {

  @override
  State<shimmerexamplecode> createState() => _shimmerexamplecodeState();
}

class _shimmerexamplecodeState extends State<shimmerexamplecode> {
  String code = """


import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shimmer/shimmer.dart';
import 'package:trainingdemo/Dependencies/List/Shimmer/shimmerexamplecode.dart';

class shimmerexample extends StatefulWidget {
  @override
  State<shimmerexample> createState() => _shimmerexampleState();
}

class _shimmerexampleState extends State<shimmerexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Shimmer"),
          backgroundColor: Colors.black,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => shimmerexamplecode(),
                ));
              },
              icon: Icon(Icons.code),
            )
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          // padding: EdgeInsets.all(10),
          children: [
            // SizedBox(
            //   height: 50,
            // ),
            Padding(
              padding:  EdgeInsets.all(10),
              child: Center(
                child: Shimmer.fromColors(
                  direction: ShimmerDirection.ltr,
                  // loop: 1,
                  // period: Duration(seconds: 2),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.withOpacity(0.9),
                      ),
                    ),

                    baseColor: Colors.grey.withOpacity(0.25),
                    highlightColor: HexColor("#00416A").withOpacity(0.6)),
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(10),
              child: Center(
                child: Shimmer.fromColors(
                    direction: ShimmerDirection.ltr,
                    // loop: 1,
                    // period: Duration(seconds: 2),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.withOpacity(0.9),
                      ),
                    ),

                    baseColor: Colors.grey.withOpacity(0.25),
                    highlightColor: HexColor("#00416A").withOpacity(0.6)),
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(10),
              child: Center(
                child: Shimmer.fromColors(
                    direction: ShimmerDirection.ltr,
                    // loop: 1,
                    // period: Duration(seconds: 2),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.withOpacity(0.9),
                      ),
                    ),

                    baseColor: Colors.grey.withOpacity(0.25),
                    highlightColor: HexColor("#00416A").withOpacity(0.6)),
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(10),
              child: Center(
                child: Shimmer.fromColors(
                    direction: ShimmerDirection.ltr,
                    // loop: 1,
                    // period: Duration(seconds: 2),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.withOpacity(0.9),
                      ),
                    ),

                    baseColor: Colors.grey.withOpacity(0.25),
                    highlightColor: HexColor("#00416A").withOpacity(0.6)),
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(10),
              child: Center(
                child: Shimmer.fromColors(
                    direction: ShimmerDirection.ltr,
                    // loop: 1,
                    // period: Duration(seconds: 2),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.withOpacity(0.9),
                      ),
                    ),

                    baseColor: Colors.grey.withOpacity(0.25),
                    highlightColor: HexColor("#00416A").withOpacity(0.6)),
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(10),
              child: Center(
                child: Shimmer.fromColors(
                    direction: ShimmerDirection.ltr,
                    // loop: 1,
                    // period: Duration(seconds: 2),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.withOpacity(0.9),
                      ),
                    ),

                    baseColor: Colors.grey.withOpacity(0.25),
                    highlightColor: HexColor("#00416A").withOpacity(0.6)),
              ),
            ),

          ],
        ));
  }
}



""";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Shimmer - Code",style: TextStyle(color: Colors.white),),
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
