// sign_in_page.dart
import 'package:flutter/material.dart';
import 'package:umkt/shared/theme.dart';
import 'package:umkt/ui/widgets/buttons.dart';
import 'package:umkt/ui/widgets/forms.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _isObscure = true;

  // Variabel untuk konfigurasi field email dan password
  final FieldConfig emailConfig = FieldConfig(
    label: 'Email',
    hint: 'Masukkan email',
  );

  final FieldConfig passwordConfig = FieldConfig(
    label: 'Password',
    hint: 'Masukkan password',
  );
  final String signInButtonText = 'Sign In';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackground,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.45,
                height: MediaQuery.of(context).size.height * 0.4,
                margin: const EdgeInsets.only(bottom: 12),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo_main.png'),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Masukkan Email dan Password Anda',
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: regular,
                ),
              ),
              const SizedBox(height: 24),
              CustomFormField(
                isObscure: _isObscure,
                onToggle: (value) {
                  setState(() {
                    _isObscure = value;
                  });
                },
                emailConfig: emailConfig,
                passwordConfig: passwordConfig,
              ),
              const SizedBox(height: 24),
              CustomButtons(
                onPressed: () {},
                buttonText: signInButtonText,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
