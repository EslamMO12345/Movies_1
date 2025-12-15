
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movies_app/features/home/presentation/widgets/movie_card.dart';

class FirstHalfView extends StatelessWidget {
  const FirstHalfView({
    super.key,
    required this.movies,
    required this.currentIndex,
    required PageController controller,
    required this.currentPage,
  }) : _controller = controller;

  final List<String> movies;
  final int currentIndex;
  final PageController _controller;
  final double currentPage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned.directional(
          textDirection: Directionality.of(context),
    
          //top: -MediaQuery.of(context).size.height * 0.1,
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY: 4),
            child: Image.asset(
              movies[currentIndex],
              height: MediaQuery.of(context).size.height * 0.7,
            ),
          ),
        ),
    
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          child: PageView.builder(
            controller: _controller,
            itemCount: movies.length,
            itemBuilder: (context, index) {
              double diff = (currentPage - index).abs();
              double scale = 1 - (diff * 0.2);
              if (scale < 0.8) scale = 0.8;
    
              return Center(
                child: Transform.scale(
                  scale: scale,
                  child: MovieCard(
                    rating: 8.7,
                    imagePath: movies[index],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
