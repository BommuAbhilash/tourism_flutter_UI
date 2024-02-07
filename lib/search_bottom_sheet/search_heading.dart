import 'package:flutter/material.dart';

class SearchHeading extends StatelessWidget {
  const SearchHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.close),
                Text(
                  "Search",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.settings)
              ],
            ),
          );
  }
}