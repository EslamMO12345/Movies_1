import 'package:flutter/material.dart';
import 'package:movies_app/features/explore/presentation/widgets/catagory_slider_item.dart';
import 'package:movies_app/features/explore/presentation/widgets/catagory_item.dart';
import 'package:movies_app/features/explore/presentation/widgets/grid_view_catagory.dart';

class ExploreViewBody extends StatelessWidget {
  const ExploreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 16),
                CatagorySliderItem(),
                SizedBox(height: 25),
                GridViewCatagory(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}