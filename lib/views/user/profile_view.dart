import 'package:clinic/core/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProFileView extends StatelessWidget {
  const ProFileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey[200],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Ahmed Mohmmed Kirsha',
                style: AppConstants.textStyle24,
              ),
              Row(
                children: [
                  const Text(
                    'Log out',
                    style: AppConstants.textStyle16,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                      onTap: () {
                        Get.offAndToNamed('/SignInView');
                      },
                      child: const Icon(
                        Icons.logout,
                        color: const Color.fromARGB(255, 112, 15, 15),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
