import 'package:clinic/core/app_constants.dart';
import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({
    super.key,
    required this.titel,
    this.onPressed,
  });
  final String titel;
 final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(16),
      color: AppConstants.kPrimaryColor,
      child: MaterialButton(
        onPressed: onPressed,
        height: 50,
        minWidth: 310,
        child: Text(
          titel,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
