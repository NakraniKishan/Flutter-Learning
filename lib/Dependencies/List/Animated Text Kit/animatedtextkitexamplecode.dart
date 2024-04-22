import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class animatedtextkitexamplecode extends StatefulWidget {

  @override
  State<animatedtextkitexamplecode> createState() => _animatedtextkitexamplecodeState();
}

class _animatedtextkitexamplecodeState extends State<animatedtextkitexamplecode> {
  String code = """
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:trainingdemo/Dependencies/List/Animated%20Text%20Kit/animatedtextkitexamplecode.dart';

class animatedtextkitexample extends StatefulWidget {

  @override
  State<animatedtextkitexample> createState() => _animatedtextkitexampleState();
}

class _animatedtextkitexampleState extends State<animatedtextkitexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Text"),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => animatedtextkitexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: Column(
        children: [

          Text("TypewriterAnimatedText"),

          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'Hello world!',
                textStyle: const TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
                speed: const Duration(milliseconds: 2000),
              ),

            ],

            totalRepeatCount: 4,
            pause: const Duration(milliseconds: 1000),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),

          SizedBox(
            height: 20,
          ),

          Text("RotateAnimatedText"),
          AnimatedTextKit(
            animatedTexts: [
              RotateAnimatedText('AWESOME'),
              RotateAnimatedText('OPTIMISTIC'),
              RotateAnimatedText('DIFFERENT'),
            ],
            onTap: () {
              print("Tap Event");
            },
          ),
          SizedBox(
            height: 20,
          ),

          Text("FadeAnimatedText"),
          AnimatedTextKit(
            animatedTexts: [
              FadeAnimatedText('do IT!'),
              FadeAnimatedText('do it RIGHT!!'),
              FadeAnimatedText('do it RIGHT NOW!!!'),
            ],
            onTap: () {
              print("Tap Event");
            },
          ),
          SizedBox(
            height: 20,
          ),
          Text("TyperAnimatedText"),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText('It is not enough to do your best,'),
              TyperAnimatedText('you must know what to do,'),
              TyperAnimatedText('and then do your best'),
              TyperAnimatedText('- W.Edwards Deming'),
            ],
            onTap: () {
              print("Tap Event");
            },
          ),
          SizedBox(
            height: 20,
          ),
          Text("TypewriterAnimatedText"),
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText('Discipline is the best tool'),
              TypewriterAnimatedText('Design first, then code'),
              TypewriterAnimatedText('Do not patch bugs out, rewrite them'),
              TypewriterAnimatedText('Do not test bugs out, design them out'),
            ],
            onTap: () {
              print("Tap Event");
            },
          ),
          SizedBox(
            height: 20,
          ),
          Text("ScaleAnimatedText"),
          AnimatedTextKit(
            animatedTexts: [
              ScaleAnimatedText('Think'),
              ScaleAnimatedText('Build'),
              ScaleAnimatedText('Ship'),
            ],
            onTap: () {
              print("Tap Event");
            },
          ),
          SizedBox(
            height: 20,
          ),
          Text("WavyAnimatedText"),
          AnimatedTextKit(
            animatedTexts: [
              WavyAnimatedText('Hello World'),
              WavyAnimatedText('Look at the waves'),
            ],
            isRepeatingAnimation: true,
            onTap: () {
              print("Tap Event");
            },
          ),
          SizedBox(
            height: 20,
          ),
          Text("FlickerAnimatedText"),
          AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              FlickerAnimatedText('Flicker Frenzy'),
              FlickerAnimatedText('Night Vibes On'),
              FlickerAnimatedText("C'est La Vie !"),
            ],
            onTap: () {
              print("Tap Event");
            },
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
        title: Text("Icon - Code",style: TextStyle(color: Colors.white),),
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
