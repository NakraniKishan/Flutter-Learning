import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/Alert%20Dialog%20Box/alertdialogexamplecode.dart';

class alertdialogexample extends StatefulWidget {

  @override
  State<alertdialogexample> createState() => _alertdialogexampleState();
}
enum Product { Apple, Samsung, Oppo, Redmi }
class _alertdialogexampleState extends State<alertdialogexample> {

  TextEditingController _textFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white,),
        title: Text("Alert Dialog Box",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => alertdialogexamplecode(),)
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
          MaterialButton(onPressed: (){
            showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                title: const Text("Alert Dialog Box"),
                content: const Text("You have raised a Alert Dialog Box"),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                    child: Container(
                      color: Colors.black,
                      padding: const EdgeInsets.all(14),
                      child: const Text("okay",style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ],
              ),
            );
          },child: Text("Show alert Dialog box"),
          ),

          MaterialButton(onPressed: (){
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('TextField AlertDemo'),
                    content: TextField(
                      controller: _textFieldController,
                      decoration: InputDecoration(hintText: "TextField in Dialog"),
                    ),
                    actions: <Widget>[
                      new MaterialButton(
                        child:  Text('SUBMIT'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      )
                    ],
                  );
                });
          },child: Text("Show TextField AlertDialog box"),),


          MaterialButton(onPressed: (){
            showDialog<Product>(
                context: context,
                barrierDismissible: true,
                builder: (BuildContext context) {
                  return SimpleDialog(
                    title: const Text('Select Product '),
                    children: <Widget>[
                      SimpleDialogOption(
                        onPressed: () {
                          Navigator.pop(context, Product.Apple);
                          print(Product.Apple);
                        },
                        child: const Text('Apple'),
                      ),
                      SimpleDialogOption(
                        onPressed: () {
                          Navigator.pop(context, Product.Samsung);
                          print(Product.Samsung);
                        },
                        child: const Text('Samsung'),
                      ),
                      SimpleDialogOption(
                        onPressed: () {
                          Navigator.pop(context, Product.Oppo);
                          print(Product.Oppo);
                        },
                        child: const Text('Oppo'),
                      ),
                      SimpleDialogOption(
                        onPressed: () {
                          Navigator.pop(context, Product.Redmi);
                          print(Product.Redmi);
                        },
                        child: const Text('Redmi'),
                      ),
                    ],
                  );
                });
          },child: Text("Show TextField AlertDialog box"),),



        ],
      )
    );
  }
}
