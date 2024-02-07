import 'package:flutter/material.dart';
import 'package:tourism_flutter_ui/discover_page/cards.dart';

class TourismCard extends StatelessWidget {
  const TourismCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.51,
      child:  const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Row(
            children: [
              SizedBox(width: 15,),
              Text(
                "The most relevant",
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
          Cards(),
        ],
      ),
    );
  }
}
