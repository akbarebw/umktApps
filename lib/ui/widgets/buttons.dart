// sign_in_button.dart
import 'package:flutter/material.dart';
import 'package:umkt/shared/theme.dart';

class CustomButtons extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  const CustomButtons({
    Key? key,
    required this.onPressed,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: darkBlueColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Center(
          child: Text(
            buttonText,
            style: whiteTextStyle.copyWith(
              fontWeight: semiBold,
            ),
          ),
        ),
      ),
    );
  }
}
