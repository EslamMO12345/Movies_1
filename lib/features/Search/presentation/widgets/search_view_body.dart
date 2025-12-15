import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/app_images.dart';
import 'package:movies_app/core/widgets/search_text_field.dart';

class SearchViewbody extends StatelessWidget {
  const SearchViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(height: 21),
          SearchTextField(),
          Expanded(
            child: Center(
              child: Image.asset(Assets.imagesSearchEmpty),
            ),
          )
        ],
      ),
    );
  }
}