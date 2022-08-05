import 'package:coffee_ui/contanst.dart';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'appbar.dart';
import 'greeting_text.dart';
import 'searchbar.dart';
import 'category.dart';
import 'item_card.dart';
import 'rcard.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: defaultPadding / 2),
          const CustomAppBar(),
          const SizedBox(height: defaultPadding / 2),
          const GreetingText(),
          const SizedBox(height: defaultPadding),
          const SearchBar(),
          const SizedBox(height: defaultPadding),
          const Category(),
          const SizedBox(height: defaultPadding / 2),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ItemCard(),
                  const SizedBox(height: defaultPadding / 2),
                  Padding(
                    padding: const EdgeInsets.only(left: defaultPadding),
                    child: Text(
                      'Special for you',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          letterSpacing: 0.5,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                  const Rcard(),
                  Center(
                    child: SizedBox(
                      height: defaultPadding * 3,
                      child: Lottie.network(
                          'https://assets6.lottiefiles.com/packages/lf20_gjmygw1x.json'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
