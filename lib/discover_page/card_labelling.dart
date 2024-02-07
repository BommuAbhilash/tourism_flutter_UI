import 'package:flutter/material.dart';
import 'package:tourism_flutter_ui/models/card_details.dart';

class CardLabelling extends StatelessWidget {
  const CardLabelling({super.key, required this.index, required this.card});
  final int index;
  final List<CardDetails> card;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            card[index].label,
            style: const TextStyle(
                fontWeight: FontWeight.bold, letterSpacing: 0.1, fontSize: 16),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Icon(Icons.star),
              Text(" ${card[index].rating.toString()} ",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      
                      fontSize: 16)),
              Text("(${card[index].review.toString()})",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.1,
                      fontSize: 16))
            ],
          )
        ],
      ),
    );
  }
}
