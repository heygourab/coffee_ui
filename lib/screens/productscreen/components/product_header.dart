import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:coffee_ui/contanst.dart';
import 'package:coffee_ui/models/models.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'psapp_bar.dart';

class ProductHeader extends StatelessWidget {
  const ProductHeader({
    Key? key,
    required this.size,
    required this.productData,
  }) : super(key: key);

  final Size size;
  final ProductData productData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(defaultPadding),
      height: size.height * .5,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultPadding),
        image: DecorationImage(
          image: NetworkImage(productData.imgScr),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // back & fav bar
          const ProductScreenAppbar(),

          Container(
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultPadding),
            ),
            child: Stack(
              children: [
                const BackGroundBlur(),
                Container(
                  margin: const EdgeInsets.all(defaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // product name
                          Text(
                            productData.name,
                            style:
                                Theme.of(context).textTheme.headline4!.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          const SizedBox(
                              height: defaultPadding / 5), // product addon
                          Text(
                            'With ${productData.addon}',
                            style: const TextStyle(
                              fontSize: 15,
                              letterSpacing: 0.5,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          // rating
                          Row(
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.solidStar,
                                color: onPrimaryColor,
                              ),
                              const SizedBox(width: defaultPadding / 2),
                              Text(
                                '${productData.rating}',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                      letterSpacing: 0.5,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                              )
                            ],
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 52,
                                height: 52,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: SvgPicture.asset(
                                  'assets/icons/coffeebeans.svg',
                                  height: defaultPadding * 2,
                                ),
                              ),
                              const SizedBox(width: defaultPadding),
                              Container(
                                alignment: Alignment.center,
                                width: 52,
                                height: 52,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: SvgPicture.asset(
                                  'assets/icons/milkcream.svg',
                                  height: defaultPadding * 2,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: defaultPadding / 2,
                              vertical: defaultPadding,
                            ),
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Text(
                              'Medium Roasted',
                              style: TextStyle(
                                color: textdarkTextColor,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BackGroundBlur extends StatelessWidget {
  const BackGroundBlur({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(defaultPadding),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          color: Colors.black.withOpacity(.4),
        ),
      ),
    );
  }
}
