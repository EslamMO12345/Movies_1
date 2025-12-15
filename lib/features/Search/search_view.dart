import 'package:flutter/material.dart';
import 'package:movies_app/features/Search/presentation/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SearchViewbody()),
    );
  }
}