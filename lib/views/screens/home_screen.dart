import 'package:amzsoft_innovexa_assignment/views/screens/favourite_screen.dart';
import 'package:amzsoft_innovexa_assignment/views/screens/search_bar_screen.dart';
import 'package:amzsoft_innovexa_assignment/views/utils/app_constants/image_constants.dart';
import 'package:amzsoft_innovexa_assignment/views/utils/app_constants/text_constants.dart';
import 'package:amzsoft_innovexa_assignment/views/utils/widgets/flower_design.dart';
import 'package:amzsoft_innovexa_assignment/views/utils/widgets/sliders.dart';
import 'package:flutter/material.dart';
import 'home_screen_components/gritings_card.dart';
import 'home_screen_components/guide_for_placements_cards.dart';
import 'home_screen_components/horizontal_list.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Image.asset(notification),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(person,width:35,color: Colors.black,),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const GreetingCard(),
            const SizedBox(height: 10,),
            const FlowerDesign( text: "Collections"),
            const HorizontalList(
              items: [
                'Modern Marvels',
                'Classic Elegance',
                'Bohemian Bliss',
                'Nature\'s Harmony'
              ],
              images: [
                collectionImage1,
                collectionImage2,
                collectionImage3,
                collectionImage4
              ],
            ),
            const SizedBox(height: 10,),
            const FlowerDesign(text: "Recent Projects"),
            VerticalSlider(),
            const FlowerDesign(text: "Shops To Explore"),
            const HorizontalList(
              items: ['Modern', 'Classic', 'Tribal'],
              images: [
                shops1,
                shops2,
                shops3,
              ],
            ),
            const SizedBox(height: 20,),
            const FlowerDesign(text: "Guide for Placement"),
            const SizedBox(height: 20,),
           const GuideForPlacementsCards()
          ],
        ),
      ),
    );
  }
}


