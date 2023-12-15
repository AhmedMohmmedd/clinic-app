
import 'package:flutter/material.dart';

class CustomLogoImage extends StatelessWidget {
  const CustomLogoImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo (2).png',
      height: 150,
    );
  }
}
