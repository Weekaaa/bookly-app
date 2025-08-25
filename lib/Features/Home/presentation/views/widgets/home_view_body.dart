import 'package:bookly_app/Features/Home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CustomHomeAppBar(),
              FeaturedBooksListView(),
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text('Best Seller', style: Styles.textStyle18),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: BestSellerListViewItem(),
            );
          }, childCount: 10),
        ),
      ],
    );
  }
}

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: BestSellerListViewItem(),
        );
      },
    );
  }
}
