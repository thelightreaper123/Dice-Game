import'dart:math';
import 'package:flutter/material.dart';

void main(){
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice Game'),
          backgroundColor: Colors.lightBlue,
        ),
        body: DicePage(),
      ),
    ),
  );

}
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum=1;
  int rightDiceNum=1;

diceFaceChange(){
  setState(() {
    leftDiceNum = Random().nextInt(6)+1;
    rightDiceNum = Random().nextInt(6)+1;
  });
}
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: (){
                diceFaceChange();
              }, child: Image.asset('images/dice$leftDiceNum.png',width: 60, height: 60,),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: (){
                diceFaceChange();
              }, child: Image.asset('images/dice$rightDiceNum.png', width: 60, height: 60,),
            ),
          ),
          
        ],
      ),
    );
  }
}
