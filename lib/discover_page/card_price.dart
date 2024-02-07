import 'package:flutter/material.dart';
import 'package:tourism_flutter_ui/models/card_details.dart';

class CardPrice extends StatelessWidget {
  const CardPrice({super.key, required this.card, required this.index});
  final List<CardDetails> card;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          width: 15,
        ),
        Row(
          children: [
            const Icon(
              Icons.euro,
              color: Colors.black45,
              size: 16,
            ),
            Text(
              "${card[index].price.toString()} ",
              style: const TextStyle(
                  color: Colors.black45,
                  decoration: TextDecoration.lineThrough,
                  fontSize: 16),
            ),
            const Icon(
              Icons.euro,
              color: Colors.black,
              size: 16,
            ),
            Text(
              "${card[index].offerprice.toString()} night ",
              style: const TextStyle(fontSize: 16),
            ),
            const Icon(
              Icons.circle,
              color: Colors.black45,
              size: 6,
            ),
            const SizedBox(width: 4,),
            const Icon(
              Icons.euro,
              color: Colors.black45,
              size: 16,
            ),
            Text(
              "${card[index].total.toString()} ",
              style: const TextStyle(color: Colors.black45, fontSize: 16),
            )
          ],
        ),
      ],
    );
  }
}
