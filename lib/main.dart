import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/screens/auth-ui/sign_up_screen.dart';


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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 191, 176, 217)),
      ),
      home: const SignUpScreen(),
    );
  }
}
