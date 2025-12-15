import 'package:flutter/material.dart';
import 'package:movies_app/features/home/presentation/widgets/movie_card.dart';
import 'package:movies_app/features/home/presentation/widgets/row_catagory.dart';

class SecondHalfHomeView extends StatelessWidget {
  const SecondHalfHomeView({super.key, required this.movies});
  final List<String> movies;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          RowCatagory(),
          const SizedBox(height: 12),
          SizedBox(
            height: height * 0.25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movies.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return MovieCard(
                  rating: 8.5,
                  imagePath: movies[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
