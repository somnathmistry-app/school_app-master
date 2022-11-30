import 'package:flutter/material.dart';

import 'app_colors.dart';


final ButtonStyle elevatedButtonStyleThemeColor = ElevatedButton.styleFrom(
  foregroundColor: Colors.white, backgroundColor: AppColors.themeColorTwo,
  minimumSize: const Size(150, 36),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(4)),
  ),
);

final ButtonStyle elevatedButtonStyleThemeColorTow = ElevatedButton.styleFrom(
 foregroundColor: Colors.white, backgroundColor: AppColors.themeColorTwo,
 minimumSize: const Size(150, 36),
 padding: const EdgeInsets.symmetric(horizontal: 16),
 shape: const RoundedRectangleBorder(
  borderRadius: BorderRadius.all(Radius.circular(4)),
 ),
);

final ButtonStyle elevatedButtonStyleWhiteCurve = ElevatedButton.styleFrom(
  foregroundColor: Colors.white, backgroundColor: Colors.green,
  minimumSize: const Size(150, 36),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(6)),
  ),
);

final ButtonStyle textButtonStyleWhite = TextButton.styleFrom(
  foregroundColor: Colors.black87, minimumSize: const Size(88, 36),
  padding: const EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2.0)),
  ),
);

final ButtonStyle curveButtonStyleThemeColorTow = ElevatedButton.styleFrom(
  foregroundColor: Colors.black87, backgroundColor: AppColors.themeColorTwo,
  minimumSize: const Size(150, 36),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(50)),
  ),
);

final ButtonStyle curveButtonStyleThemeColor = ElevatedButton.styleFrom(
  foregroundColor: Colors.black87, backgroundColor: AppColors.themeColor,
  minimumSize: const Size(150, 40),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
  ),
);

final ButtonStyle elevatedButtonStyleStripe = ElevatedButton.styleFrom(
  foregroundColor: Colors.white, backgroundColor: Colors.deepPurpleAccent,
  minimumSize: const Size(150, 50),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(6)),
  ),
);

final ButtonStyle elevatedCurveButtonStyleRed = ElevatedButton.styleFrom(
  foregroundColor: Colors.black87, backgroundColor: Colors.redAccent,
  minimumSize: const Size(150, 36),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(6)),
  ),
);

final ButtonStyle elevatedCurveButtonStyleYellow = ElevatedButton.styleFrom(
  foregroundColor: Colors.black87, backgroundColor: Colors.amberAccent,
  minimumSize: const Size(150, 36),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(6)),
  ),
);
