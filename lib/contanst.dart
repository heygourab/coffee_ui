import 'package:flutter/material.dart';

const primaryColor = Color(0xff0c1015);
const onPrimaryColor = Color(0xffd17843);

const textdarkTextColor = Color(0xff51555a);

const double defaultPadding = 16.0;

const String avatarImg =
    'https://images.unsplash.com/photo-1522069394066-326005dc26b2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fGdpcmx8ZW58MHx8MHxibGFja3w%3D&auto=format&fit=crop&w=500&q=60';

const neomorphismShadow = [
  BoxShadow(
    offset: Offset(-5, -5),
    blurRadius: 10,
    color: Color(0Xff131a22),
  ),
  BoxShadow(
    offset: Offset(5, 5),
    blurRadius: 10,
    color: Color(0Xff050608),
  )
];

const linearGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xff232831),
    Color(0xff0f1218),
  ],
);
