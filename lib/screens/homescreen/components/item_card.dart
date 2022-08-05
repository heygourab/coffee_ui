import 'dart:ui';

import 'package:coffee_ui/contanst.dart';
import 'package:coffee_ui/models/models.dart';
import 'package:coffee_ui/screens/productscreen/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView.builder(
        itemCount: products.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        itemBuilder: (context, index) => CreateItem(
          index: index,
          maxlen: products.length,
          productData: products[index],
        ),
      ),
    );
  }
}

class CreateItem extends StatelessWidget {
  final ProductData productData;
  final int maxlen, index;

  const CreateItem({
    Key? key,
    required this.productData,
    required this.maxlen,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Item background
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProductScreen(productData: productData),
        ),
      ),
      child: Container(
        width: 150,
        margin: EdgeInsets.only(
          left: defaultPadding,
          right: index == maxlen - 1 ? defaultPadding : 0,
        ),
        decoration: BoxDecoration(
          gradient: linearGradientColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          margin: const EdgeInsets.all(defaultPadding / 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // product image
              Container(
                height: 130,
                decoration: BoxDecoration(
                  boxShadow: neomorphismShadow,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage(productData.imgScr),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: defaultPadding * 1.5,
                      width: defaultPadding * 4,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          const ItemCardBlur(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.solidStar,
                                color: onPrimaryColor,
                                size: 15,
                              ),
                              Text(
                                '${productData.rating}',
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: defaultPadding / 2),
              // product name
              Text(
                productData.name,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      letterSpacing: .25,
                      color: Colors.white,
                    ),
              ),
              const SizedBox(height: defaultPadding / 5),
              // product addon
              Text(
                productData.addon,
                style: const TextStyle(
                  letterSpacing: .5,
                  color: textdarkTextColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: defaultPadding / 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // product price
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: '\$ ',
                          style: TextStyle(color: onPrimaryColor),
                        ),
                        TextSpan(text: '${productData.price}')
                      ],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  // add botton
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: onPrimaryColor,
                      boxShadow: neomorphismShadow,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const FaIcon(
                      FontAwesomeIcons.plus,
                      color: Colors.white,
                      size: defaultPadding,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ItemCardBlur extends StatelessWidget {
  const ItemCardBlur({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
        child: Container(
          color: Colors.black.withOpacity(0.4),
        ),
      ),
    );
  }
}
