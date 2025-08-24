import 'package:bookly_app/Features/Home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomBookDetailsAppBar(),
        SizedBox(
          width: MediaQuery.of(context).size.width * .45,
          child: FeaturedListViewItem(),
        ),
        const SizedBox(height: 26),
        Text(
          'Despicable Me 4',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 5),
        Opacity(
          opacity: .7,
          child: Text(
            'Bob & Stuart',
            style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(height: 8),
        BookRating(),
        const SizedBox(height: 28),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .09,
          ),
          child: BooksAction(),
        ),
        SizedBox(height: 30),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .07,
            ),
            child: Text(
              'You can also like',
              style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w700),
            ),
          ),
        ),
        SizedBox(height: 10),
        SimilarBooksListView(),
        SizedBox(height: 20),
      ],
    );
  }
}
