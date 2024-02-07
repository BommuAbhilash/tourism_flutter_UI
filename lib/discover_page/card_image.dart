import 'package:flutter/material.dart';
import 'package:tourism_flutter_ui/discover_page/card_labelling.dart';
import 'package:tourism_flutter_ui/discover_page/card_price.dart';
import 'package:tourism_flutter_ui/discover_page/card_rooms.dart';
import 'package:tourism_flutter_ui/image_info/image_info.dart';
import 'package:tourism_flutter_ui/models/card_details.dart';

class CardImage extends StatelessWidget {
  const CardImage({super.key, required this.card, required this.index});
  final List<CardDetails> card;
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Scaffold.of(context).showBottomSheet((context) {
          return ImageInformation(
            card: card,
            index: index,
          );
        }, backgroundColor: Colors.transparent);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.90,
        height: MediaQuery.of(context).size.height * 0.42,
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        // padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage(card[index].image),
                          fit: BoxFit.cover)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topRight,
                        width: 36,
                        height: 36,
                        margin: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            // image: DecorationImage(image: ),
                            color: Colors.black38),
                        child: const Padding(
                          padding: EdgeInsets.all(6),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            CardLabelling(
              card: card,
              index: index,
            ),
            const SizedBox(
              height: 8,
            ),
            CardRooms(
              card: card,
              index: index,
            ),
            const SizedBox(
              height: 6,
            ),
            CardPrice(card: card, index: index)
          ],
        ),
      ),
    );
  }
}
