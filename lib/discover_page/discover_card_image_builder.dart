import 'package:flutter/material.dart';
import 'package:tourism_flutter_ui/discover_page/discover_card_image.dart';
import 'package:tourism_flutter_ui/models/discover_card_details.dart';

List<DiscoverCardDetails> discoverCards = [
  DiscoverCardDetails(
    image: "assets/sea6.jpg",
    label: "Maldives",
    rating: 4.96,
    review: 217,
  ),
  DiscoverCardDetails(
    image: "assets/sea7.jpg",
    label: "India",
    rating: 4.96,
    review: 217,
  ),
  DiscoverCardDetails(
    image: "assets/sea8.jpg",
    label: "Dubai ",
    rating: 4.96,
    review: 217,
  ),
];

class DiscoverCardImageBuilder extends StatelessWidget {
  const DiscoverCardImageBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.30,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: discoverCards.length,
        itemBuilder: (context, index) {
          return DiscoverCardImage(
            card: discoverCards,
            index: index,
          );
        },
      ),
    );
  }
}
