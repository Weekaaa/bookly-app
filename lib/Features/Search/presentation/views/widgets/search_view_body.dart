import 'package:bookly_app/Features/Search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/Features/Search/presentation/views/widgets/search_results_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomSearchTextField(),
        ),
        const SizedBox(height: 12),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: SearchResultListView(),
          ),
        ),
      ],
    );
  }
}
