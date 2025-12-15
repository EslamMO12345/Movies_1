import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/app_images.dart';
import 'package:movies_app/features/home/presentation/widgets/movie_card.dart';

class GridViewCatagory extends StatelessWidget {
  const GridViewCatagory({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height / 1.5),
      ),
      itemBuilder: (context, index) {
        return MovieCard(rating: 5.5, imagePath: Assets.imagesFilm);
      },
    );
  }
}
