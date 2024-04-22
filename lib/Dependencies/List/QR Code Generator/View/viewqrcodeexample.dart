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
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("View QR Code",style: TextStyle(color: Colors.white),),
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
