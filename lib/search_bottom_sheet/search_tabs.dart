import 'package:flutter/material.dart';

class SearchTabs extends StatefulWidget {
  const SearchTabs({super.key});

  @override
  State<SearchTabs> createState() => _SearchTabsState();
}

class _SearchTabsState extends State<SearchTabs> with TickerProviderStateMixin {
  int value = 0;
  late TabController controller = TabController(length: 3, vsync: this);

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TabBar(
          padding: const EdgeInsets.all(8),
          isScrollable: true,
            controller: controller,
            onTap: (val) {
              setState(() {
                value = val;
              });
            },
            indicatorColor: Colors.transparent,
            tabs: [
              Tab(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      color: (value == 0) ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                      child: Text(
                    "Any type",
                    style: TextStyle(
                        color: (value == 0) ? Colors.white : Colors.black),
                  )),
                ),
              ),
              Tab(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      color: (value == 1) ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                      child: Text(
                    "Room",
                    style: TextStyle(
                        color: (value == 1) ? Colors.white : Colors.black),
                  )),
                ),
              ),
              Tab(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      color: (value == 2) ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                      child: Text(
                    "Entire home",
                    style: TextStyle(
                        color: (value == 2) ? Colors.white : Colors.black),
                  )),
                ),
              ),
            ]),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.7,
          child:  TabBarView(
            controller: controller,
            children: const [
            
             Center(
              child: Text("It's cloudy here"),
            ),
             Center(
              child: Text("It's rainy here"),
            ),
             Center(
              child: Text("It's sunny here"),
            ),
          ]),
        )
      ],
    );
  }
}
