import 'package:flutter/material.dart';

import '../../utils/app_constants/image_constants.dart';
import '../../utils/app_constants/text_constants.dart';

class GuideForPlacementsCards extends StatelessWidget {
  const GuideForPlacementsCards({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(
            left: 20.0, right: 20, top: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xff111111),
                  borderRadius: BorderRadius.circular(20)),
              width: 230,
              height: 500,
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                children: [
                  Positioned(
                    right: -50,
                    top: -40,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(16)
                      ),
                      child: Image.asset(livingRoom,width: 150,height: 150),
                    ),
                  ),
                  const Positioned.fill(
                    top: 100,
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 16.0),
                            Text(
                              "Living Room",
                              style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.0),
                        Flexible(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Tips:",
                                style: TextStyle(
                                    fontSize: 14.0, color: Colors.white)),
                            Text(
                              cardText1,
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.white),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16.0),
            Container(
              decoration: BoxDecoration(
                  color:  Colors.black.withOpacity(0.80),
                  borderRadius: BorderRadius.circular(20)),
              width: 230,
              height: 500,
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                children: [
                  Positioned(
                    right: -210,
                    top: -180,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(16)
                      ),
                      child: Image.asset(diningRoom,width: 450,height: 450),
                    ),
                  ),
                  const Positioned.fill(
                    top: 100,
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 16.0),
                            Text(
                              "Dining Room",
                              style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.0),
                        Flexible(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Tips:",
                                style: TextStyle(
                                    fontSize: 13.0, color: Colors.white)),
                            Text(
                              cardText2,
                              style: TextStyle(
                                  fontSize: 13.0, color: Colors.white),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16.0),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xff111111).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20)),
              width: 230,
              height: 500,
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                children: [
                  Positioned(
                    right: -30,
                    top: -30,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(16)
                      ),
                      child: Image.asset(bedRoom,width: 140,height: 140),
                    ),
                  ),
                  const Positioned.fill(
                    top: 100,
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 16.0),
                            Text(
                              "Bed Room",
                              style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.0),
                        Flexible(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Tips:",
                                style: TextStyle(
                                    fontSize: 13.0, color: Colors.white)),
                            Text(
                              cardText3,
                              style: TextStyle(
                                  fontSize: 13.0, color: Colors.white),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
