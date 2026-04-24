import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'assets.dart';
import 'button.dart';
import 'colors.dart';
import 'style.dart';
import 'text_field.dart';
import 'text_field_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPassword = true;
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: white,
      body: Stack(
        children: [
          // Background image
          Container(
            height: size.height / 1.3,
            width: size.width,
            alignment: Alignment.topCenter,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('$imgPath/firelove.png'),
              ),
            ),
          ),

          // Bottom card
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: size.height / 1.6,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(24),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 15),
                      Text(
                        'Welcome Back',
                        style: GoogleFonts.outfit(
                          fontSize: 32,
                          letterSpacing: -0.2,
                          fontWeight: FontWeight.w600,
                          color: black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Our goal is to provide you with the visibility you need\nto potentially connect with your life partner.',
                        textAlign: TextAlign.center,
                        style: textStyle12.copyWith(
                          color: black.withOpacity(.5),
                        ),
                      ),
                      const SizedBox(height: 32),
                      CustomTextField(
                        controller: email,
                        validator: (value) {
                          if (value == null || !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                            return 'Invalid email';
                          }
                          return null;
                        },
                        prefixIcon: const Icon(Iconsax.sms, color: primary),
                        hintText: 'Email Address',
                      ),
                      const SizedBox(height: 20),
                      CustomTextFieldPassword(
                        controller: password,
                        hintText: 'Password',
                        obsecure: showPassword,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter password';
                          }
                          return null;
                        },
                        prefixIcon: const Icon(Iconsax.lock, color: primary),
                        suffixIcon: InkWell(
                          onTap: () => setState(() => showPassword = !showPassword),
                          child: Icon(
                            showPassword ? Iconsax.eye_slash : Iconsax.eye,
                            color: primary,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              // navigate to forgot password
                            },
                            child: Text(
                              'Forgotten password?',
                              style: textStyle14.copyWith(color: primary),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      CustomButton(
                        onPressed: () {
                          _formKey.currentState!.validate();
                        },
                        text: 'Sign In',
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have an account?',
                            style: textStyle14.copyWith(color: black),
                          ),
                          TextButton(
                            onPressed: () {
                              // navigate to sign up
                            },
                            child: Text(
                              'Sign Up',
                              style: textStyle14.copyWith(
                                fontWeight: FontWeight.w700,
                                color: primary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}