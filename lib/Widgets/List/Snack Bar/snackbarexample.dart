import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/Snack%20Bar/snackbarexamplecode.dart';

class snackbarexample extends StatefulWidget {

  @override
  State<snackbarexample> createState() => _snackbarexampleState();
}

class _snackbarexampleState extends State<snackbarexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Snack Bar",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => snackbarexamplecode(),)
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
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green)),
            onPressed: () {
              const snackdemo = SnackBar(
                content: Text('Hello Friends, I am SnackBar'),
                backgroundColor: Colors.green,
                elevation: 10,
                duration: Duration(seconds: 10),
                showCloseIcon: true,
                closeIconColor: Colors.red,

                behavior: SnackBarBehavior.floating,
                margin: EdgeInsets.all(5),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackdemo
                // SnackBar(content: Text('Hello Friends, I am SnackBar'),
                //   backgroundColor: Colors.green,
                //   elevation: 10,
                //   behavior: SnackBarBehavior.floating,
                //   margin: EdgeInsets.all(5),
                // ),
              );


            },
            child: const Text('Click Me'),
          ),
        ],
      )
    );
  }
}
