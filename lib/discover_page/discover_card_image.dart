import 'package:flutter/material.dart';
import 'package:tourism_flutter_ui/models/discover_card_details.dart';

class DiscoverCardImage extends StatelessWidget {
  const DiscoverCardImage({super.key, required this.card, required this.index});
  final List<DiscoverCardDetails> card;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.42,
      height: MediaQuery.of(context).size.height * 0.18,
      margin: const EdgeInsets.only(
        left: 20,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height * 0.22,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: AssetImage(card[index].image),
                        fit: BoxFit.cover)),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
                Text(
                  card[index].label,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.1,
                      fontSize: 16),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(Icons.star),
                    Text(" ${card[index].rating.toString()} ",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    Text("(${card[index].review.toString()})",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.1,
                            fontSize: 16))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
