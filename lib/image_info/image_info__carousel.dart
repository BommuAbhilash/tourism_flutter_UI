import 'package:flutter/material.dart';
import 'package:tourism_flutter_ui/models/card_details.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageInfoCarousel extends StatefulWidget {
  const ImageInfoCarousel({super.key, required this.card, required this.index});
  final List<CardDetails> card;
  final int index;
  @override
  State<ImageInfoCarousel> createState() => _ImageInfoCarouselState();
}

class _ImageInfoCarouselState extends State<ImageInfoCarousel> {
  int currentIndex = 0;
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          child: PageView.builder(
              controller: controller,
              scrollDirection: Axis.horizontal,
              itemCount: widget.card.length,
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      image: DecorationImage(
                        image: AssetImage(widget.card[index].image),
                        fit: BoxFit.cover,
                      )),
                );
              }),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              width: 50,
              height: 50,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[400]?.withOpacity(0.5)),
              child: const Icon(Icons.close),
            ),
          ),
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey[400]?.withOpacity(0.5)),
            child: const Icon(Icons.file_upload_outlined),
          )
        ]),
        Positioned(
          left: 0,
          right: 0,
          top: 285,
          child: Container(
            alignment: Alignment.bottomCenter,
            child: SmoothPageIndicator(
              controller: controller,
              count: widget.card.length,
              effect: const ScrollingDotsEffect(
                activeDotColor: Colors.white,
                dotColor: Colors.grey,
                dotWidth: 8.0,
                dotHeight: 8.0,
                radius: 8,
              ),
            ),
          ),
        )
      ],
    );
  }
}
// CarouselSlider(
//           items: [
//             for (int i = 0; i < widget.card.length; i++)
//               InkWell(
//                 onDoubleTap: () {
//                   setState(() {
//                     currentIndex = i;
//                   });
//                 },
//                 child: Container(
//                   alignment: Alignment.bottomCenter,
//                   width: MediaQuery.of(context).size.width,
//                   height: MediaQuery.of(context).size.height * 0.4,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       image: DecorationImage(
//                           image: AssetImage(widget.card[i].image),
//                           fit: BoxFit.cover)),
//                 ),
//               ),
//           ],
//           options: CarouselOptions(
//               viewportFraction: 1,
//               height: MediaQuery.of(context).size.height * 0.4),
//         ),
//         SmoothPageIndicator(controller: , count: count)
// CarouselIndicator(
//               count: widget.card.length,
//               index: currentIndex,
//               color: Colors.amber,
//               activeColor: Colors.black,
//             )