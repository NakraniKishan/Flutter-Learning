import 'package:flutter/material.dart';
import 'package:trainingdemo/Dependencies/List/Animated%20Text%20Kit/animatedtextkitexample.dart';
import 'package:trainingdemo/Dependencies/List/Close%20App%20Double%20Tap/closeapp.dart';
import 'package:trainingdemo/Dependencies/List/Flutter%20Blur%20Hash/flutterblurhashexample.dart';
import 'package:trainingdemo/Dependencies/List/Flutter%20Syntax%20View/fluttersyntaxviewexample.dart';
import 'package:trainingdemo/Dependencies/List/Full%20Screen%20Image/fullscrimgex.dart';
import 'package:trainingdemo/Dependencies/List/Google%20Fonts/googlefontsexample.dart';
import 'package:trainingdemo/Dependencies/List/Hex%20Color/hexcolorexample.dart';
import 'package:trainingdemo/Dependencies/List/Lottie/lottieexample.dart';
import 'package:trainingdemo/Dependencies/List/Onboarding%20Screen/Flutter%20Onboarding%20Slider/flutteronboardingsliderexample.dart';
import 'package:trainingdemo/Dependencies/List/Page%20Transition/pagetransitionexample.dart';
import 'package:trainingdemo/Dependencies/List/Parallax%20Sensors/parallaxsensorsexample.dart';
import 'package:trainingdemo/Dependencies/List/QR%20Code%20Generator/Generate/generateqrcodeexample.dart';
import 'package:trainingdemo/Dependencies/List/Shared%20Preference/sharedpreferncelogin.dart';
import 'package:trainingdemo/Dependencies/List/Shimmer/shimmerexample.dart';
import 'package:trainingdemo/Dependencies/List/Slidable/slidableexample.dart';
import 'package:trainingdemo/Dependencies/List/Star%20Rating/starratingdeplist.dart';
import 'package:trainingdemo/Dependencies/List/Story%20View/storyviewexample.dart';
import 'package:trainingdemo/Dependencies/List/Url%20Launcher/urllauncerexample.dart';
import 'package:trainingdemo/Dependencies/List/Wave/waveeffectexample.dart';
import 'package:trainingdemo/Dependencies/List/Widget%20Mask/widgetmaskexample.dart';
import 'package:trainingdemo/Dependencies/List/Youtube%20Video/youtubrvideoexample.dart';

class dependencylist extends StatefulWidget {

  @override
  State<dependencylist> createState() => _dependencylistState();
}

class _dependencylistState extends State<dependencylist> {
  List depname = ["full_screen_image:","double_back_to_close_app:","page_transition:","lottie:","google_fonts:","hexcolor:","flutter_syntax_view:","flutter_slidable:","widget_mask:","animated_text_kit:","shared_preferences:","story_view:","flutter_rating_stars:, star_rating:","shimmer:","youtube_player_flutter: ","qr_flutter:","wave:","url_launcher:","flutter_onboarding_slider:","flutter_blurhash:","parallax_sensors_bg:"];
  List names = ["Full Screen Image","Close App","Page Transition","Lottie","Google Fonts","Hex Color","Syntax View","Slideable","Widget Mask","Animated Text","Shared Preference", "Story View","Star Rating","Shimmer Loading Animation","Youtube Video","Generate QR Code","Wave Effect","URL Launcher","On Boarding Screen","Blur Image","Parallax Sensor"];

  // import 'package:floating_snackbar/floating_snackbar.dart';
  // awesome_snackbar_content: ^0.1.3
  // List names = ["Full Screen Image","Close App","Page Transition","Hex Code","Flutter Syntax View","Rename_App","Flutter_Launcher_Icons","QR Code","Wave","expansion_tile_card: ^3.0.0"];
  // List names = ["First","ListView Builder","Custom AppBar","Drawer","Icon", "Text", "Text Field","Text Form Field","Images","Circle Avatar","Button","Toggle Button","Drop Down Button","Container","Row & Column","Snackbar","Divider"];
  List filename = [
    fullscrimgex(),
    closeapp(),
    pagetransitionexample(),
    lottieexample(),
    googlefontsexample(),
    hexcolorexample(),
    fluttersyntaxviewexample(),
    slidableexample(),
    widgetmaskexample(),
    animatedtextkitexample(),
    sharedpreferncelogin(),
    storyviewexample(),
    starratingdeplist(),
    shimmerexample(),
    youtubrvideoexample(),
    generateqrcodeexample(),
    waveeffectexample(),
    urllauncerexample(),
    flutteronboardingsliderexample(),
    flutterblurhashexample(),
    parallaxsensorsexample()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Dependencies",style: TextStyle(color: Colors.white),),
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
                subtitle: Text(depname[index]),
              );
            }
        ),
      ),
    );
  }
}
