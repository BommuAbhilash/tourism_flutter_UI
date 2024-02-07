import 'package:flutter/material.dart';
import 'package:tourism_flutter_ui/discover_page/discover_card_image_builder.dart';

class DiscoverCard extends StatelessWidget {
  const DiscoverCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.40,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text(
                "Discover new places",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    letterSpacing: 0.2),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          DiscoverCardImageBuilder(),
        ],
      ),
    );
  }
}
