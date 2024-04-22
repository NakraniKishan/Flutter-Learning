import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class viewqrcodeexamplecode extends StatefulWidget {

  @override
  State<viewqrcodeexamplecode> createState() => _viewqrcodeexamplecodeState();
}

class _viewqrcodeexamplecodeState extends State<viewqrcodeexamplecode> {
  String code = """

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:trainingdemo/Dependencies/List/QR%20Code%20Generator/View/viewqrcodeexamplecode.dart';

class viewqrcodeexample extends StatefulWidget {

  var did = "";

  viewqrcodeexample({required this.did});

  @override
  State<viewqrcodeexample> createState() => _viewqrcodeexampleState();
}

class _viewqrcodeexampleState extends State<viewqrcodeexample> {
  @override
  Widget build(BuildContext context) {
    var id = widget.did.toString();
    return Scaffold(
      appBar: AppBar(
        title: Text("View QR Code"),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => viewqrcodeexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: Center(
        child: QrImageView(
          data: id,
          size: 280,
          // You can include embeddedImageStyle Property if you
          //wanna embed an image from your Asset folder
          embeddedImageStyle: QrEmbeddedImageStyle(
            size: const Size(
              100,
              100,
            ),
          ),
        ),
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
        title: Text("View QR Code - Code",style: TextStyle(color: Colors.white),),
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
