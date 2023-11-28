import 'package:flutter/material.dart';
import 'package:umkt/shared/theme.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignUPageState createState() => _SignUPageState();
}

class _SignUPageState extends State<SignInPage> {
  bool _isObscure = true;

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
              _buildTextField('Email', 'Masukkan email',
                  const Color.fromARGB(255, 245, 245, 245)),
              const SizedBox(height: 12),
              _buildTextFieldWithVisibilityToggle(
                  'Password',
                  'Masukkan password',
                  const Color.fromARGB(255, 245, 245, 245)),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  // Tambahkan logika untuk menghandle tombol sign in
                },
                child: const Text('Sign In'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(String label, String hintText, Color borderColor,
      {bool isPassword = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 8),
        TextField(
          obscureText: isPassword && _isObscure,
          decoration: InputDecoration(
            hintText: hintText,
            // Mengatur warna border input text
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor, width: 2.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor, width: 1.0),
            ),
            // Mengatur radius border input text
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            // Mengatur warna teks di dalam input text
            hintStyle: TextStyle(color: Colors.grey),
            // Mengatur padding teks di dalam input text
            contentPadding:
                EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
          ),
        ),
      ],
    );
  }

  Widget _buildTextFieldWithVisibilityToggle(
      String label, String hintText, Color borderColor) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 8),
        TextField(
          obscureText: _isObscure,
          decoration: InputDecoration(
            hintText: hintText,
            // Mengatur warna border input text
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor, width: 2.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor, width: 1.0),
            ),
            // Mengatur radius border input text
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            // Mengatur warna teks di dalam input text
            hintStyle: TextStyle(color: Colors.grey),
            // Mengatur padding teks di dalam input text
            contentPadding:
                EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              },
              child: Icon(
                _isObscure ? Icons.visibility : Icons.visibility_off,
                color: Colors.grey, // Mengatur warna ikon mata
              ),
            ),
          ),
        ),
      ],
    );
  }
}
