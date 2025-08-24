import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            textColor: Colors.black,
            backgroundColor: Colors.white,
            borderRadius: BorderRadiusGeometry.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            text: '19.99 \$',
          ),
        ),
        Expanded(
          child: CustomButton(
            textColor: Colors.white,
            backgroundColor: const Color(0xffEF8262),
            borderRadius: BorderRadiusGeometry.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            text: 'Free Preview',
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
