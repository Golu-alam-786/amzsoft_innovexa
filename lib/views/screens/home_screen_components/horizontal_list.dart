import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  final List<String> items;
  final List<String> images;

  const HorizontalList({super.key, required this.items, required this.images});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenWidth / 2,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: SizedBox(
              width: screenWidth / 2,
              child: Card(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(8)),
                        image: DecorationImage(
                          image: AssetImage(images[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 130,
                        height: 38,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: Colors.white.withOpacity(0.5),
                                width: 1.3)),
                        child: Center(
                            child: Text(
                              items[index],
                              style: const TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
