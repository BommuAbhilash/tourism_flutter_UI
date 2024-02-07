import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tourism_flutter_ui/image_info/image_info__carousel.dart';
import 'package:tourism_flutter_ui/image_info/image_label.dart';
import 'package:tourism_flutter_ui/models/card_details.dart';

class ImageInformation extends StatelessWidget {
  const ImageInformation({super.key, required this.card, required this.index});
  final List<CardDetails> card;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ImageInfoCarousel(card: card, index: index),
              const SizedBox(
                height: 25,
              ),
              ImageLabel(card: card, index: index),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
          child: Container(
            height: 60,
            color: Colors.black.withOpacity(0.7),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: BottomNavigationBar(
                landscapeLayout: BottomNavigationBarLandscapeLayout.spread ,
                type: BottomNavigationBarType.fixed,
                elevation: 0,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.white38,
                backgroundColor: Colors.transparent.withOpacity(0.5),
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.message_outlined),
                      label: "Messages"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.message_outlined), label: "Messages")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
