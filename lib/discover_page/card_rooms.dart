import 'package:flutter/material.dart';
import 'package:tourism_flutter_ui/models/card_details.dart';

class CardRooms extends StatelessWidget {
  const CardRooms({super.key,re, required this.card, required this.index});
  final List<CardDetails> card;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 15,
        ),
        Text(
          "${card[index].guests.toString()} guests ",
          style: const TextStyle(color: Colors.black54,fontSize: 13),
        ),
        const Icon(
          Icons.circle,
          size: 6,
        ),
        Text(
          " ${card[index].bedrooms.toString()} bedrooms ",
          style: const TextStyle(color: Colors.black54,fontSize: 13),
        ),
        const Icon(
          Icons.circle,
          size: 6,
        ),
        Text(
          " ${card[index].beds.toString()} beds ",
          style: const TextStyle(color: Colors.black54,fontSize: 13),
        ),
        const Icon(
          Icons.circle,
          size: 6,
        ),
        Text(
          " ${card[index].bathroom.toString()} bathroom ",
          style: const TextStyle(color: Colors.black54,fontSize: 13),
        ),
      ],
    );
  }
}
