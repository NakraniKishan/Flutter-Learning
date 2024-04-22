import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class storyviewscreencode extends StatefulWidget {

  @override
  State<storyviewscreencode> createState() => _storyviewscreencodeState();
}

class _storyviewscreencodeState extends State<storyviewscreencode> {
  String code = """
import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';
// import 'package:story_view/controller/story_controller.dart';
// import 'package:story_view/widgets/story_view.dart';

class storyviewscreen extends StatefulWidget {

  @override
  State<storyviewscreen> createState() => _storyviewscreenState();
}

class _storyviewscreenState extends State<storyviewscreen> {
  final controller = StoryController();
  @override
  Widget build(BuildContext context) {
    return  Material(
      child: StoryView(
        storyItems: [
          StoryItem.inlineImage(url: "https://images.unsplash.com/photo-1704168370831-b7f450dadeb0?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", controller: controller),
          StoryItem.text(title: "Hello World", backgroundColor: Colors.indigo),
          StoryItem.pageImage(
            url: "https://images.unsplash.com/photo-1704319236961-3cc376bdcf3f?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            controller: controller,
            duration: Duration(milliseconds: 3000),

            caption: "Goa",
          ),
        ],
        controller: controller,
        inline: false,
        repeat: false,
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
        title: Text("Story Page - Code",style: TextStyle(color: Colors.white),),
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
