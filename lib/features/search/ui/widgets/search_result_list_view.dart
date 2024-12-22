import 'package:flutter/material.dart';

import 'search_custom_card_search_result.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: CustomCardSearchResult(),
          );
        });
  }
}
