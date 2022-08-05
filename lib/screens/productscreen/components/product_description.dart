import 'package:flutter/material.dart';
import 'package:coffee_ui/contanst.dart';
import 'package:coffee_ui/models/models.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.productData,
  }) : super(key: key);

  final ProductData productData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Description',
            style: TextStyle(
              fontSize: 16,
              letterSpacing: .5,
              color: textdarkTextColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: defaultPadding / 2),
          Text(
            productData.description,
            style: TextStyle(
              color: Colors.white.withOpacity(0.8),
            ),
          )
        ],
      ),
    );
  }
}
