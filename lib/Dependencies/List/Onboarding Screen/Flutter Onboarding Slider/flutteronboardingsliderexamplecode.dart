import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class flutteronboardingsliderexamplecode extends StatefulWidget {

  @override
  State<flutteronboardingsliderexamplecode> createState() => _flutteronboardingsliderexamplecodeState();
}

class _flutteronboardingsliderexamplecodeState extends State<flutteronboardingsliderexamplecode> {
  String code = """


import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:lottie/lottie.dart';
import 'package:trainingdemo/Dependencies/List/Onboarding%20Screen/Flutter%20Onboarding%20Slider/flutteronboardingsliderexamplecode.dart';

class flutteronboardingsliderexample extends StatefulWidget {

  @override
  State<flutteronboardingsliderexample> createState() => _flutteronboardingsliderexampleState();
}

class _flutteronboardingsliderexampleState extends State<flutteronboardingsliderexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("On boarding Slider",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => flutteronboardingsliderexamplecode(),
              ));
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: OnBoardingSlider(
        //headerBackgroundColor: Colors.white,
        finishButtonText: 'Register',
        // finishButtonColor: Colors.indigo,
        onFinish: (){
          Navigator.of(context).pop();
          Navigator.of(context).push( MaterialPageRoute(builder: (context) => flutteronboardingsliderexamplecode(),), );
        },
        skipTextButton: Text('Skip', style: TextStyle(color: Colors.indigo),),
        trailing: GestureDetector(
          onTap: (){
            Navigator.of(context).pop();
            Navigator.of(context).push( MaterialPageRoute(builder: (context) => flutteronboardingsliderexamplecode(),), );
          },
          child: Text('Login', style: TextStyle(color: Colors.indigo),),
        ),
        background: [

          Lottie.asset("assets/dependency/flutteronboardingslider/onboard1.json", width: MediaQuery.of(context).size.width),
          Lottie.asset("assets/dependency/flutteronboardingslider/onboard2.json", width: MediaQuery.of(context).size.width),
          Lottie.asset("assets/dependency/flutteronboardingslider/onboard3.json", width: MediaQuery.of(context).size.width),

          // Image.asset('assets/images/onboard1.png', height: 450, width: 410,),
          // Image.asset('assets/images/onboard2.png', height: 450, width: 410,),
          // Image.asset('assets/images/onboard3.png', height: 450, width: 410,),

        ],
        totalPage: 3,
        speed: 1.8,
        pageBodies: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Spacer(flex: 8,),
                Text('Community', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                Spacer(),
                Text('Get To Know Your Coworkers'),
                Spacer(flex: 2,),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                Spacer(flex: 8,),
                Text('Stay in Touch',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                Spacer(),
                Text('Reach out to anyone at anytime'),
                Spacer(flex: 2,),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                Spacer(flex: 8,),
                Text('Personal Desk Space',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                Spacer(),
                Text("We don't believe in cubicles"),
                Spacer(flex: 2,),
              ],
            ),
          ),
        ], headerBackgroundColor: Colors.white,
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
        title: Text("On Boarding Slider - Code",style: TextStyle(color: Colors.white),),
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
