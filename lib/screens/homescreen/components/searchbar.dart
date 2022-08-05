import 'package:coffee_ui/contanst.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xff141920),
          boxShadow: neomorphismShadow,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding, vertical: 5),
          child: TextField(
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              letterSpacing: 0.5,
              fontWeight: FontWeight.w500,
            ),
            cursorColor: textdarkTextColor,
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Find your coffee...',
              hintStyle: const TextStyle(
                fontSize: 16,
                color: textdarkTextColor,
                letterSpacing: 0.5,
              ),
              icon: SizedBox(
                width: 30,
                height: 30,
                child: Lottie.network(
                    'https://assets5.lottiefiles.com/packages/lf20_3wvsruah.json'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
