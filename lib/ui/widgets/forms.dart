// sign_in_form.dart
import 'package:flutter/material.dart';
import 'package:umkt/shared/theme.dart';

class CustomFormField extends StatelessWidget {
  final bool isObscure;
  final ValueChanged<bool> onToggle;
  final FieldConfig emailConfig;
  final FieldConfig passwordConfig;

  const CustomFormField({
    Key? key,
    required this.isObscure,
    required this.onToggle,
    required this.emailConfig,
    required this.passwordConfig,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          emailConfig.label,
          style: blackTextStyle.copyWith(
            fontWeight: medium,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            hintText: emailConfig.hint,
            contentPadding: const EdgeInsets.all(12),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: lightGreyColor, width: 2.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: blueColor,
                width: 2.0,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        Text(
          passwordConfig.label,
          style: blackTextStyle.copyWith(
            fontWeight: medium,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          obscureText: isObscure,
          decoration: InputDecoration(
            hintText: passwordConfig.hint,
            contentPadding: const EdgeInsets.all(12),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: lightGreyColor, width: 2.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: blueColor,
                width: 2.0,
              ),
            ),
            suffixIcon: GestureDetector(
              onTap: () {
                onToggle(!isObscure);
              },
              child: Icon(
                isObscure ? Icons.visibility : Icons.visibility_off,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class FieldConfig {
  final String label;
  final String hint;

  FieldConfig({
    required this.label,
    required this.hint,
  });
}
