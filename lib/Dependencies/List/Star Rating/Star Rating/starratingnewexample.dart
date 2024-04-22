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
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Star Rating",style: TextStyle(color: Colors.white),),
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
            'Rating: $_rating / ${starLength.toDouble()}',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          StarRating(
            mainAxisAlignment: MainAxisAlignment.center,
            length: starLength,
            rating: _rating,
            between: 5,
            starSize: 30,
            onRaitingTap: (rating) {
              print('Clicked rating: $rating / $starLength');
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
