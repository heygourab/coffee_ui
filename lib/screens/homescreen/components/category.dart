import 'package:coffee_ui/contanst.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final List<String> categoryList = [
      'All',
      'Cappucchino',
      'Espresso',
      'Latte',
      'Flat white',
      'Black Coffee'
    ];

    return Container(
      padding: const EdgeInsets.only(left: defaultPadding),
      height: 50,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        itemCount: categoryList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => setState(() => selectedIndex = index),
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(right: defaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  categoryList[index],
                  style: TextStyle(
                    color: selectedIndex == index
                        ? onPrimaryColor
                        : textdarkTextColor,
                    fontSize: 16,
                    letterSpacing: 0.5,
                    fontWeight: selectedIndex == index
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
                const SizedBox(
                  height: defaultPadding / 4,
                ),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: selectedIndex == index
                        ? onPrimaryColor
                        : Colors.transparent,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
