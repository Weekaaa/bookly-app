import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        height: 150,
        child: Row(
          children: [
            BookImage(),
            SizedBox(width: 16),
            Expanded(child: BookDetails()),
          ],
        ),
      ),
    );
  }
}

class BookImage extends StatelessWidget {
  const BookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: const DecorationImage(
            image: AssetImage(AssetsData.testImage),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * .6,
          child: Text(
            'Harry Potter and the Goblet of Fire',
            style: Styles.textStyle20,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(height: 3),
        Text('J.K. Rowling', style: Styles.textStyle14),
        const SizedBox(height: 3),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '19.99 \$',
              style: Styles.textStyle20
                  .copyWith(fontWeight: FontWeight.bold)
                  .merge(GoogleFonts.montserrat()),
            ),
            BookRating(),
          ],
        ),
      ],
    );
  }
}

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Colors.yellow, size: 20),
        SizedBox(width: 6),
        Text(
          '4.8',
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 10),
        Text('(248)', style: Styles.textStyle14),
      ],
    );
  }
}
