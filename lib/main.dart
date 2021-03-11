import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:thirty_days_of_flutter/Button/button.dart';
import 'package:toast/toast.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "30 Days Of Flutter",
      home: HomePage(),
    )
  );
}



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Dice Roller")),
      ),

      body:Button(),
    );
  }
}
