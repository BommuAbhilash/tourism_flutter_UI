import 'package:flutter/material.dart';

class SearchBarField extends StatelessWidget {
  const SearchBarField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              decoration: const BoxDecoration(),
              child: const SearchBar(
                leading: Icon(Icons.search),
                trailing: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Norway",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            "18-21 oct ",
                            style: TextStyle(color: Colors.black26),
                          ),
                          Icon(
                            Icons.circle,
                            size: 8,
                            color: Colors.black26,
                          ),
                          Text(
                            " 4 guests",
                            style: TextStyle(color: Colors.black26),
                          )
                        ],
                      )
                    ],
                  )
                ],
                elevation: MaterialStatePropertyAll(0),
              ));
  }
}