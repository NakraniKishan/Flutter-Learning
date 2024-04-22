import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';
// import 'package:story_view/controller/story_controller.dart';
// import 'package:story_view/widgets/story_view.dart';

class gossipstoryviewscreen extends StatefulWidget {

  @override
  State<gossipstoryviewscreen> createState() => _gossipstoryviewscreenState();
}

class _gossipstoryviewscreenState extends State<gossipstoryviewscreen> {
  final controller = StoryController();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: StoryView(
              storyItems: [
                StoryItem.inlineImage(url: "https://images.unsplash.com/photo-1704168370831-b7f450dadeb0?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", controller: controller),
                StoryItem.text(title: "Hello World", backgroundColor: Colors.indigo),
                StoryItem.pageImage(
                  url: "https://images.unsplash.com/photo-1704319236961-3cc376bdcf3f?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  controller: controller,
                  duration: Duration(milliseconds: 3000),

                  caption: Text("Goa"),
                ),
              ],
              controller: controller,
              inline: false,
              repeat: false,
            ),
    );
  }
}
