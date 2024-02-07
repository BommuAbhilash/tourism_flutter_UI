import 'package:flutter/material.dart';
import 'package:tourism_flutter_ui/models/card_details.dart';

class ImageLabel extends StatelessWidget {
  const ImageLabel({super.key, required this.card, required this.index});
  final List<CardDetails> card;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Entire cabin in Lillehammer",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          const SizedBox(
            height: 5,
          ),
          const Row(
            children: [
              Icon(Icons.star_outlined),
              Text(
                " 4.92 (116 reviews)",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.black12, width: 1))),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Entire home",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Hosted by Isabelle")
                ],
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        image: AssetImage(card[2].image), fit: BoxFit.cover)),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.black12, width: 1))),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Amenities",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[350],
                ),
                child: const FittedBox(
                  child: Text("Wi-Fi"),
                ),
              ),
              const SizedBox(
                width: 3,
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[350],
                ),
                child: const FittedBox(
                  child: Text('65" HDTV'),
                ),
              ),
              const SizedBox(
                width: 3,
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[350],
                ),
                child: const FittedBox(
                  child: Text("Indoor fireplace"),
                ),
              ),
              const SizedBox(
                width: 3,
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[350],
                ),
                child: const FittedBox(
                  child: Text("Hair dryer"),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[350],
                ),
                child: const FittedBox(
                  child: Text("Washing machine"),
                ),
              ),
              const SizedBox(
                width: 3,
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[350],
                ),
                child: const FittedBox(
                  child: Text('Dryer'),
                ),
              ),
              const SizedBox(
                width: 3,
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[350],
                ),
                child: const FittedBox(
                  child: Text("Refrigerator"),
                ),
              ),
              const SizedBox(
                width: 3,
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[350],
                ),
                child: const FittedBox(
                  child: Text("Dishwasher"),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.black12, width: 1))),
          ),
          const SizedBox(
            height: 15,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.home_work_outlined),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Self check-in",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text("Check yourself in with the lockbox"),
              SizedBox(
                height: 15,
              ),
            ],
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.home_work_outlined),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Great check-in experience",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text("100% of recent guests gave the check-process a 5-star rating",style: TextStyle(fontSize: 13),),
              SizedBox(
                height: 15,
              ),
            ],
          )
        ],
      ),
    );
  }
}
