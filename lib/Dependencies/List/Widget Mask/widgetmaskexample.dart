

import 'package:flutter/material.dart';
import 'package:trainingdemo/Dependencies/List/Widget%20Mask/widgetmaskexamplecode.dart';
import 'package:widget_mask/widget_mask.dart';

class widgetmaskexample extends StatefulWidget {

  @override
  State<widgetmaskexample> createState() => _widgetmaskexampleState();
}

class _widgetmaskexampleState extends State<widgetmaskexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("WidgetMask",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => widgetmaskexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: Column(

        children: [

        WidgetMask(
        // `BlendMode.difference` results in the negative of `dst` where `src`
        // is fully white. That is why the text is white.
        blendMode: BlendMode.srcATop,
          childSaveLayer: true,
          // mask: Image.network("https://images.unsplash.com/photo-1698618612864-9adb6f18a9ee?auto=format&fit=crop&q=80&w=1974&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",fit: BoxFit.fill),
        mask: Image.network("https://images.unsplash.com/photo-1689163178264-17f1e847b98c?auto=format&fit=crop&q=80&w=1974&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",fit: BoxFit.fill),
        child: Image.asset('assets/dependency/widgetmask/maskimg.png'),
        )
        ],
      )
    );
  }
}
