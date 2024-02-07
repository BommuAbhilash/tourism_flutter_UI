import 'package:flutter/material.dart';
import 'package:tourism_flutter_ui/discover_page/discover_card.dart';
import 'package:tourism_flutter_ui/discover_page/stack_image.dart';
import 'package:tourism_flutter_ui/discover_page/tourism_card.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: [
        SliverToBoxAdapter(
          child: StackImage(),
        ),
        SliverToBoxAdapter(
          child: TourismCard(),
        ),
        SliverToBoxAdapter(
          child: DiscoverCard(),
        ),
      ],
    );
  }
}
