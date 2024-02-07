import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tourism_flutter_ui/bookings_page.dart';
import 'package:tourism_flutter_ui/discover_page.dart';
import 'package:tourism_flutter_ui/favorites_page.dart';
import 'package:tourism_flutter_ui/messages_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;

  late PageController controller = PageController(initialPage: currentIndex);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          extendBody: true,
          backgroundColor: Colors.grey[200],
          body: PageView(
            
            physics: const NeverScrollableScrollPhysics(),
            controller: controller,
            children: const [
              DiscoverPage(),
              FavoritesPage(),
              BookingsPage(),
              MessagesPage()
            ],onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
          ),
          bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
          
              child: Container(
                height: 60,
                color: Colors.black.withOpacity(0.7),
                child: BottomNavigationBar(
                  currentIndex: currentIndex,
                  type: BottomNavigationBarType.fixed,
                  elevation: 0,
                  selectedItemColor: Colors.white,
                  unselectedItemColor: Colors.white38,
                  backgroundColor: Colors.transparent.withOpacity(0.5),
                  onTap: (value) {
                    setState(() {
                      currentIndex = value;
                      controller.jumpToPage(value);
                    });
                  },
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.shape_line_outlined), label: "Discover"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.favorite_border), label: "Favorites"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.book_outlined), label: "Bookings"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.message_outlined), label: "Messages")
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
