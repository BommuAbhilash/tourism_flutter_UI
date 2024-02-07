import 'package:flutter/material.dart';
import 'package:tourism_flutter_ui/discover_page/search_field.dart';
import 'package:tourism_flutter_ui/search_bottom_sheet/search_bottom_page.dart';

class StackImage extends StatelessWidget {
  const StackImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: const DecorationImage(
                      image: AssetImage("assets/sea2.jpg"), fit: BoxFit.cover)),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Norway",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Icon(
                          Icons.person_pin,
                          size: 30,
                          color: Colors.white,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "Hey,Martin! Tell us where you",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "want to go",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                        overlayColor:
                            const MaterialStatePropertyAll(Colors.transparent),
                        onTap: () {
                          Scaffold.of(context).showBottomSheet((context) {
                            return const SearchBottomPage();
                          }, backgroundColor: Colors.black.withOpacity(0.8));
                        },
                        child: const SearchField()),
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
