import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class starratingnewexamplecode extends StatefulWidget {

  @override
  State<starratingnewexamplecode> createState() => _starratingnewexamplecodeState();
}

class _starratingnewexamplecodeState extends State<starratingnewexamplecode> {
  String code = """


import 'package:flutter/material.dart';
import 'package:star_rating/star_rating.dart';
import 'package:trainingdemo/Dependencies/List/Star%20Rating/Star%20Rating/starratingnewexamplecode.dart';

class starratingnewexample extends StatefulWidget {

  @override
  State<starratingnewexample> createState() => _starratingnewexampleState();
}

class _starratingnewexampleState extends State<starratingnewexample> {
  final int starLength = 5;
  double _rating = 0;
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
                  MaterialPageRoute(builder: (context) => starratingnewexamplecode(),)
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
          Text(
     
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          StarRating(
            mainAxisAlignment: MainAxisAlignment.center,
            length: starLength,
            rating: _rating,
            between: 5,
            starSize: 30,
            onRaitingTap: (rating) {
              
              setState(() {
                _rating = rating;
              });
            },
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [


              IconButton(
                icon: Icon(Icons.add),

                onPressed: (){
                  setState(() {
                    _rating += 0.5;
                    if (_rating > starLength) {
                      _rating = starLength.toDouble();
                    }
                  });
                },

              ),
              IconButton(
                icon: Icon(Icons.remove),

                onPressed: (){
                  setState(() {
                    _rating -= 0.5;
                    if (_rating < 0.0) {
                      _rating = 0.0;
                    }
                  });
                },

              ),
            ],
          )
        ],
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
