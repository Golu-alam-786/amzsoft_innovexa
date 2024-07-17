
import 'package:amzsoft_innovexa_assignment/views/utils/app_constants/image_constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class VerticalSlider extends StatefulWidget {
  VerticalSlider({super.key});

  @override
  _VerticalSliderState createState() => _VerticalSliderState();
}

class _VerticalSliderState extends State<VerticalSlider> {
  final List<String> imgList = [
    recentProject,
    recentProject,
    recentProject,
    recentProject
  ];
  final List<String> titles = [
    'Luxury Living Room in Manhattan',
    'Luxury Living Room in Manhattan',
    'Luxury Living Room in Manhattan',
    'Luxury Living Room in Manhattan'
  ];
  final List<String> descriptions = [
    'A vibrant, multi-colored carpet featuring eclectic patterns, adding warmth and character to a lively family gathering space.',
    'A vibrant, multi-colored carpet featuring eclectic patterns, adding warmth and character to a lively family gathering space.',
    'A vibrant, multi-colored carpet featuring eclectic patterns, adding warmth and character to a lively family gathering space.',
    'A vibrant, multi-colored carpet featuring eclectic patterns, adding warmth and character to a lively family gathering space.',
  ];

  int _currentIndex = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Container(
          height: 190,
          child: CarouselSlider.builder(
            carouselController: _controller,
            options: CarouselOptions(
              height: screenHeight,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            itemCount: imgList.length,
            itemBuilder: (context, index, realIdx) {
              return Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(150.0),
                          bottomRight: Radius.circular(150.0),
                        ),
                        child: Image.asset(
                          imgList[index],
                          width: 170,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                titles[index],
                                style: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFB23A48),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                descriptions[index],
                                textAlign: TextAlign.center,
                                style: const TextStyle(color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
        SmoothPageIndicator(
          controller: PageController(initialPage: _currentIndex),
          count: imgList.length,
          effect: const WormEffect(dotColor: Colors.grey,dotHeight: 10,dotWidth: 10,activeDotColor: Colors.black),
        ),
        SizedBox(height: 40,)
      ],
    );
  }
}
