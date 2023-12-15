import 'package:clinic/views/auth/sign_in_view.dart';
import 'package:clinic/views/auth/sign_up_view.dart';
import 'package:clinic/views/user/user_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/SignInView',
      getPages: [
        GetPage(name: '/SignInView', page: () => SignInView()),
        GetPage(name: '/SignUpView', page: () => SignUpView()),
        GetPage(name: '/UserHomeView', page: () => UserView()),
      ],
    );
  }
}
