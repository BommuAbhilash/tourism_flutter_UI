import 'package:flutter/material.dart';
import 'package:tourism_flutter_ui/discover_page/card_image.dart';
import 'package:tourism_flutter_ui/models/card_details.dart';

List<CardDetails> cards = [
  CardDetails(
      image: "assets/sea.jpg",
      label: "Tiny home in Raelingen",
      rating: 4.96,
      review: 217,
      guests: 4,
      bedrooms: 2,
      beds: 2,
      bathroom: 1,
      price: 117,
      offerprice: 91,
      total: 273),
  CardDetails(
      image: "assets/sea1.jpg",
      label: "Tiny home in ",
      rating: 4.96,
      review: 217,
      guests: 4,
      bedrooms: 2,
      beds: 2,
      bathroom: 1,
      price: 117,
      offerprice: 91,
      total: 273),
  CardDetails(
      image: "assets/sea3.jpg",
      label: "Tiny home  Raelingen",
      rating: 4.96,
      review: 217,
      guests: 4,
      bedrooms: 2,
      beds: 2,
      bathroom: 1,
      price: 117,
      offerprice: 91,
      total: 273),
  CardDetails(
      image: "assets/sea4.jpg",
      label: "Tiny home in Raelingen",
      rating: 4.96,
      review: 217,
      guests: 4,
      bedrooms: 2,
      beds: 2,
      bathroom: 1,
      price: 117,
      offerprice: 91,
      total: 273),
  CardDetails(
      image: "assets/sea5.jpg",
      label: "Tiny home in Raelingen",
      rating: 4.96,
      review: 217,
      guests: 4,
      bedrooms: 2,
      beds: 2,
      bathroom: 1,
      price: 117,
      offerprice: 91,
      total: 273),
      CardDetails(
      image: "assets/sea6.jpg",
      label: "Tiny home in Raelingen",
      rating: 4.96,
      review: 217,
      guests: 4,
      bedrooms: 2,
      beds: 2,
      bathroom: 1,
      price: 117,
      offerprice: 91,
      total: 273),
      CardDetails(
      image: "assets/sea7.jpg",
      label: "Tiny home in Raelingen",
      rating: 4.96,
      review: 217,
      guests: 4,
      bedrooms: 2,
      beds: 2,
      bathroom: 1,
      price: 117,
      offerprice: 91,
      total: 273),
      CardDetails(
      image: "assets/sea8.jpg",
      label: "Tiny home in Raelingen",
      rating: 4.96,
      review: 217,
      guests: 4,
      bedrooms: 2,
      beds: 2,
      bathroom: 1,
      price: 117,
      offerprice: 91,
      total: 273),
];

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.46,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: cards.length,
        itemBuilder: (context, index) {
          return CardImage(
            card: cards,
            index: index,
          );
        },
      ),
    );
  }
}
