import 'package:flutter/material.dart';
import 'package:tourism_flutter_ui/discover_page/card_image.dart';
import 'package:tourism_flutter_ui/models/card_details.dart';

List<CardDetails> cards = [
  CardDetails(
      image: "assets/sea.jpg",
      label: "Tiny home in Raelingen",
      rating: 4.96,
      review: 217,
      guests: 4,
      bedrooms: 2,
      beds: 2,
      bathroom: 1,
      price: 117,
      offerprice: 91,
      total: 273),
  CardDetails(
      image: "assets/sea1.jpg",
      label: "Tiny home in ",
      rating: 4.96,
      review: 217,
      guests: 4,
      bedrooms: 2,
      beds: 2,
      bathroom: 1,
      price: 117,
      offerprice: 91,
      total: 273),
  CardDetails(
      image: "assets/sea3.jpg",
      label: "Tiny home  Raelingen",
      rating: 4.96,
      review: 217,
      guests: 4,
      bedrooms: 2,
      beds: 2,
      bathroom: 1,
      price: 117,
      offerprice: 91,
      total: 273),
  CardDetails(
      image: "assets/sea4.jpg",
      label: "Tiny home in Raelingen",
      rating: 4.96,
      review: 217,
      guests: 4,
      bedrooms: 2,
      beds: 2,
      bathroom: 1,
      price: 117,
      offerprice: 91,
      total: 273),
  CardDetails(
      image: "assets/sea5.jpg",
      label: "Tiny home in Raelingen",
      rating: 4.96,
      review: 217,
      guests: 4,
      bedrooms: 2,
      beds: 2,
      bathroom: 1,
      price: 117,
      offerprice: 91,
      total: 273),
];

class SearchBottomPage extends StatefulWidget {
  const SearchBottomPage({super.key});

  @override
  State<SearchBottomPage> createState() => _SearchBottomPageState();
}

class _SearchBottomPageState extends State<SearchBottomPage>
    with TickerProviderStateMixin {
  int value = 0;
  late TabController controller = TabController(length: 3, vsync: this);

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        primary: true,
        centerTitle: true,
        leading: const Icon(
          Icons.close,
          color: Colors.black,
        ),
        title: const Text(
          "Search",
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Icon(
            Icons.settings,
            color: Colors.black,
          )
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
        flexibleSpace: FlexibleSpaceBar(
          title: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 10,
            // margin: const EdgeInsets.only(bottom: 30),
            // color: Colors.black,
          ),
        ),
        bottom: TabBar(
          isScrollable: false,
            indicatorColor: Colors.transparent,
            onTap: (val) {
              setState(() {
                value = val;
              });
            },
            controller: controller,
            tabs: [
              Tab(
                child: Container(
                  // padding: const EdgeInsets.all(8),
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
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:18.0),
        child: TabBarView(controller: controller, children: [
          SizedBox(
            
            height: MediaQuery.of(context).size.height * 0.5,
            child: ListView.builder(
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: cards.length,
              itemBuilder: (context, index) {
                return CardImage(
                  
                  card: cards,
                  index: index,
                );
              },
            ),
          ),
          const Center(
            child: Text("Room"),
          ),
          const Center(
            child: Text("Entire home"),
          ),
        ]),
      ),
    );
  }
}

// Container(
//       // color: Colors.transparent,
//       width: MediaQuery.of(context).size.width,
//       height: MediaQuery.of(context).size.height * 0.96,
//       decoration: BoxDecoration(
//           color: Colors.grey[200],
//           borderRadius: const BorderRadius.only(
//               topLeft: Radius.circular(30), topRight: Radius.circular(30))),
//       child:  const Column(
//         children: [

//           SearchHeading(),
//           SearchBarField(),
//           SizedBox(height: 20,),
//           SearchTabs(),

//         ],
//       ),
//     );
