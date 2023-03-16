import 'package:flutter/material.dart';

class HelloPage extends StatefulWidget {


  HelloPage({Key? key}) : super(key: key);

  @override
  State<HelloPage> createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  int num = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Text(
              "Hello ${num}",
              style: TextStyle(fontSize: 50),
            ),
            ElevatedButton(
              onPressed: (){
              setState(() {
              num++;
                });
              print("num : ${num}");
            },
                child: Text("변경",
                    style: TextStyle(fontSize: 50)),
            ),
          ],
        ),
      ),
    );
  }
}
