import 'package:flutter/material.dart';
import 'package:coffee_ui/models/models.dart';

import 'components/product_description.dart';
import 'components/product_header.dart';

class ProductScreen extends StatelessWidget {
  final ProductData productData;
  const ProductScreen({Key? key, required this.productData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // product header
              ProductHeader(size: size, productData: productData),
              // product description
              ProductDescription(productData: productData),
            ],
          ),
        ),
      ),
    );
  }
}
