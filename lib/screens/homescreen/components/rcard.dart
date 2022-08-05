import 'package:coffee_ui/contanst.dart';
import 'package:coffee_ui/models/r_models.dart';
import 'package:flutter/material.dart';

class Rcard extends StatelessWidget {
  const Rcard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        for (final rCard in rCards)
          Container(
            margin: const EdgeInsets.only(
              bottom: defaultPadding,
              right: defaultPadding,
              left: defaultPadding,
            ),
            padding: const EdgeInsets.all(defaultPadding / 2),
            height: size.height * .16,
            decoration: BoxDecoration(
              boxShadow: neomorphismShadow,
              gradient: linearGradientColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 120,
                  decoration: BoxDecoration(
                    boxShadow: neomorphismShadow,
                    borderRadius: BorderRadius.circular(defaultPadding / 2),
                    image: DecorationImage(
                      image: NetworkImage(rCard.imgScr),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      rCard.rTitle,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    Text(
                      '${rCard.description.substring(0, 25)}...',
                      style: const TextStyle(
                        color: textdarkTextColor,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
      ],
    );
  }
}
