//import 'dart:html';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:thirty_days_of_flutter/Image/dice_image.dart';
import 'package:toast/toast.dart';

class Button extends StatefulWidget {
  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width,
      // margin: const EdgeInsets.fromLTRB(100 , 200 , 100, 200),

      child: Card(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),

            DiceImage(img: Random().nextInt(6)+1),
            // Image.asset("assets/dice1.png"),
            // SizedBox(height: 40,),
            Center(
              child: ElevatedButton(
                child: Text("Roll" , style: TextStyle(fontSize: 20.0),),
                onPressed: (){
                  setState(() {
                    DiceImage(img: Random().nextInt(6)+1,);
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
