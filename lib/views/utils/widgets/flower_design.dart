import 'package:flutter/material.dart';
import '../app_constants/image_constants.dart';

class FlowerDesign extends StatelessWidget {

  final String text;
  const FlowerDesign({super.key,  required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 30,
        width: (11 * text.length).toDouble(),
        child: Stack(
          children: [
            Image.asset(union),
            Positioned(
              left: 13,
              bottom: 7,
              child: Text(
                '$text',
                style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),
              ),
            ),
            Positioned(child:  Image.asset(line, height: 15,),top: 8,left: 8),
            Positioned(child:Image.asset(horizontalLine, width: 80, height: 2, fit:BoxFit.cover,), top: 20,left: 8,)

          ],
        ),
      ),
    );
  }
}
