import 'package:clinic/core/app_constants.dart';
import 'package:clinic/views/widgets/custom_logo_image.dart';
import 'package:clinic/views/widgets/custom_material_button.dart';
import 'package:clinic/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

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
                'SIGN IN',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Welcome back! Nice to see you agin :-)',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 50),
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
              CustomMaterialButton(
                titel: 'Sign In',
                onPressed: () {
                  Get.offAndToNamed('/UserHomeView');
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don`t have Acuount? ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/SignUpView');
                    },
                    child: const Text(
                      'Sign Up Now',
                      style: TextStyle(
                        color: AppConstants.kPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
