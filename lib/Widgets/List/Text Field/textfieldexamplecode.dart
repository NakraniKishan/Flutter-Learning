import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class textfieldexamplecode extends StatefulWidget {

  @override
  State<textfieldexamplecode> createState() => _textfieldexamplecodeState();
}

class _textfieldexamplecodeState extends State<textfieldexamplecode> {
  String code = """
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trainingdemo/Widgets/List/Text%20Field/textfieldexamplecode.dart';

class textfieldexample extends StatefulWidget {

  @override
  State<textfieldexample> createState() => _textfieldexampleState();
}

class _textfieldexampleState extends State<textfieldexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field"),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => textfieldexamplecode(),)
              );
            },
            icon: Icon(Icons.code),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 10, left: 15, right: 15,bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("1. Text Field - Borderless input"),
              SizedBox(
                height: 10,
              ),
              TextField(),

              SizedBox(
                height: 10,
              ),
              Text("2. Text Field With Hint Text"),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your text",
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Text("3. Text Field for Number"),
              SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter your number",

                ),
              ),

              SizedBox(
                height: 10,
              ),
              Text("4. Text Field With lable text"),
              SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter your number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  labelText: "Enter an integer",
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Text("5. Text Field With Icon with Prefix-Suffix"),
              SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.attach_money),
                  suffixIcon: Icon(CupertinoIcons.money_dollar_circle),
                  labelText: "Enter your value",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  icon: Icon(Icons.currency_rupee),

                ),
              ),

              SizedBox(
                height: 10,
              ),
              Text("6. Text Field With Text with Prefix-Suffix"),
              SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixText: "abc",
                  suffixText: "pqr",
                  labelText: "Enter your value",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  icon: Icon(Icons.currency_rupee),

                ),
              ),

              SizedBox(
                height: 10,
              ),
              Text("7. Text Field With Multiline"),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Enter Multiple Lines :",
                  hintText: "Type Something..",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                maxLines: 5,
              ),

              SizedBox(
                height: 10,
              ),
              Text("8. Text Field - Password"),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Enter Your Password :",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  prefixIcon: Icon(Icons.security),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),

            ],
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
        title: Text("Text Fields - Code",style: TextStyle(color: Colors.white),),
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
