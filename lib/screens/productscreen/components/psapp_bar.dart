import 'package:flutter/material.dart';
import 'package:coffee_ui/contanst.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductScreenAppbar extends StatelessWidget {
  const ProductScreenAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              alignment: Alignment.center,
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                gradient: linearGradientColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const FaIcon(
                FontAwesomeIcons.angleLeft,
                color: textdarkTextColor,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 42,
            width: 42,
            decoration: BoxDecoration(
              gradient: linearGradientColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const FaIcon(
              FontAwesomeIcons.solidHeart,
              color: textdarkTextColor,
            ),
          )
        ],
      ),
    );
  }
}
