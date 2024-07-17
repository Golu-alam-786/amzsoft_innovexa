import 'package:amzsoft_innovexa_assignment/views/utils/app_constants/image_constants.dart';
import 'package:flutter/material.dart';
class GreetingCard extends StatelessWidget {
  const GreetingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 200,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          image: DecorationImage(
            image: AssetImage(coverImage),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
