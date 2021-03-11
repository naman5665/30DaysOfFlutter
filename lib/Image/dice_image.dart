//import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';


class DiceImage extends StatefulWidget {

  final int img;
  DiceImage({
    @required this.img
});

  @override
  _DiceImageState createState() => _DiceImageState();
}

class _DiceImageState extends State<DiceImage> {

  int get _imageGet => widget.img;

  @override
  Widget build(BuildContext context) {

    Image image = Image.asset("assets/dice1.png");

    if(_imageGet == 1){
      image = Image.asset("assets/dice1.png");
    }else if(_imageGet == 2){
      image = Image.asset("assets/dice2.png");
    }else if(_imageGet == 3){
      image = Image.asset("assets/dice3.png");
    }else if(_imageGet == 4){
      image = Image.asset("assets/dice4.png");
    }else if(_imageGet == 5){
      image = Image.asset("assets/dice5.png");
    }else{
      image = Image.asset("assets/dice6.png");
    }


    return Container(

      child: Padding(
        padding: const EdgeInsets.all(75.0),
        child: Center(
            child: image,
        ),
      ),
    );
  }
}