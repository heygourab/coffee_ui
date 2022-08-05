import 'package:coffee_ui/contanst.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              gradient: linearGradientColor,
              borderRadius: BorderRadius.circular(20),
              boxShadow: neomorphismShadow,
            ),
            child: const FaIcon(
              FontAwesomeIcons.grip,
              color: textdarkTextColor,
            ),
          ),
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: neomorphismShadow,
              image: const DecorationImage(
                image: NetworkImage(avatarImg),
                fit: BoxFit.cover,
                isAntiAlias: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
