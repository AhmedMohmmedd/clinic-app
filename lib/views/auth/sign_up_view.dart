import 'package:clinic/core/app_constants.dart';
import 'package:clinic/views/widgets/custom_logo_image.dart';
import 'package:clinic/views/widgets/custom_material_button.dart';
import 'package:clinic/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomLogoImage(),
              const SizedBox(height: 20),
              const Text(
                'SIGN UP',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Welcome! Now You can join US :-)',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 50),
              CustomTextField(
                hintText: 'Name',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: 'Email',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: 'Password',
                obscureTex: true,
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomMaterialButton(
                titel: 'Sign UP',
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have Acuount? ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.offAllNamed('/SignInView');
                    },
                    child: const Text(
                      'Login Now',
                      style: TextStyle(
                        color: AppConstants.kPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
