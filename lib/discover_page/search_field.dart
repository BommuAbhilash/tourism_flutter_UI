import 'dart:ui';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(35),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15,tileMode: TileMode.clamp),
        child: Container(
        
          width: MediaQuery.of(context).size.width,
          height: 70,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.zero,
            color: Colors.transparent,
          ),
          child: const Row(children: [
            SizedBox(width: 15,),
            Icon(
              Icons.search,
              color: Colors.white,
              size: 28,
            ),
            SizedBox(
              width: 15,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,children: [
              Text("Search places",style: TextStyle(color: Colors.white,fontSize: 20),),
              Row(
                children: [
                  Text("Date range  ",style: TextStyle(color: Colors.white54,fontSize: 16),),
                  Icon(Icons.circle,color: Colors.white60,size: 6,),
                  Text("  Number of guests",style: TextStyle(color: Colors.white54,fontSize: 16),)
                ],
              ),

            ],)
          ]),
        ),
      ),
    );
  }
}
