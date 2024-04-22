import 'package:flutter/material.dart';
import 'package:trainingdemo/Dependencies/List/Youtube%20Video/youtubrvideoexamplecode.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class youtubrvideoexample extends StatefulWidget {

  @override
  State<youtubrvideoexample> createState() => _youtubrvideoexampleState();
}

class _youtubrvideoexampleState extends State<youtubrvideoexample> {
  late YoutubePlayerController controller;
  TextEditingController newvideo = new TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    const url ="https://www.youtube.com/watch?v=il_1aAQnV_M";
    controller = YoutubePlayerController(initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: const YoutubePlayerFlags(
        mute: false, // is video sound playing
        loop: false, // is same video repeated
        autoPlay: false, // is video played when initialized

      )
    )..addListener((){
      if(mounted){
        setState(() {

        });
      }
    }
    );

  }

  @override
  void deactivate() {
    controller.pause();
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: controller,
      ),
      builder: (context,player) => Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white,),
          title: Text("Youtube Video",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.black,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => youtubrvideoexamplecode(),)
                );
              },
              icon: Icon(Icons.code),
            )
          ],
        ),
        body: ListView(
          children: [
            player,



            Padding(
              padding:  EdgeInsets.all(10),
              child: Column(
                children: [
                  TextFormField(
                    controller: newvideo,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Enter Youtube URL",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      labelText: "Enter Youtube URL",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    child: Text("Play Video "),
                    onPressed: (){
                      // String bb;
                      // setState(() {
                      //   bb = newvideo.text.toString();
                      // });

                      // const url = bb;
                      // const url = "https://www.youtube.com/watch?v=oRGhqUjWF6U";
                      controller.load(YoutubePlayer.convertUrlToId(newvideo.text.toString())!);
                    },
                  ),
                  ElevatedButton(
                    child: Text("Full Screen"),
                    onPressed: (){
                      // const url = "https://www.youtube.com/watch?v=oRGhqUjWF6U";
                      controller.toggleFullScreenMode();
                    },
                  ),

                  ElevatedButton(
                    child: Text(controller.value.isPlaying ? "Pause" : "Play"),
                    onPressed: (){
                      // const url = "https://www.youtube.com/watch?v=oRGhqUjWF6U";
                      // controller.load(YoutubePlayer.convertUrlToId(url)!);
                      if(controller.value.isPlaying)
                      {
                        controller.pause();
                      }
                      else{
                        controller.play();
                      }
                    },
                  ),

                  ElevatedButton(
                    child: Text("More.."),
                    onPressed: (){
                      // const url = "https://www.youtube.com/watch?v=oRGhqUjWF6U";
                      // controller.load(YoutubePlayer.convertUrlToId(url)!);
                      controller.mute();
                      controller.unMute();
                      controller.seekTo(Duration(seconds: 10));

                    },
                  ),

                  Text(controller.metadata.title),
                  Text(controller.metadata.author),
                ],
              ),
            ),



          ],
        ),
      ),
    );
  }
}
