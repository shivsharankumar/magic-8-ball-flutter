import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
        home: BallPage(),
        debugShowCheckedModeBanner: false,
      ),
    );

class Ball extends StatefulWidget {
  // const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int chooseImg=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child:TextButton(
          onPressed: (){
            print("button pressed");
            setState(() {
              chooseImg=Random().nextInt(5)+1;
            });
          },
          child:Image.asset("images/ball$chooseImg.png")
      )
    );
  }
}

class BallPage extends StatelessWidget {
  // const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ask Me AnyThing"),
        backgroundColor:Colors.blue[900],
      ),
      backgroundColor: Colors.blue,
      body: Ball(),
    );

  }
}
