import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Center(child: Text("Dicee"),), backgroundColor: Colors.red,),
        body:  DicePage(),
        backgroundColor: Colors.red,
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber=1;
  int rightDiceNumber=1;

  void handlePress(){
   setState(() {
     leftDiceNumber=Random().nextInt(6) +1;
     rightDiceNumber = Random().nextInt(6)+1;
   });
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Expanded(child: TextButton(onPressed: handlePress,child: Image.asset('images/dice$leftDiceNumber.png'),)),
          Expanded(child: TextButton(onPressed: handlePress,child: Image.asset('images/dice$rightDiceNumber.png'),)),
        ],
      ),
    );
  }
}




