import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:myapp/screens/user-panel/main-screen.dart';
import 'package:myapp/utils/app-constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    
    _timer = Timer(const Duration(seconds: 15), () {
      Get.off(() => const MainScreen());
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.appSecondaryColor,
      appBar: AppBar(
        backgroundColor: AppConstant.appSecondaryColor,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: Get.width,
              alignment: Alignment.center,
              child: Lottie.asset(
                'assets/images/cart.json',
                repeat: true,
                animate: true,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20.0),
            width: Get.width,
            alignment: Alignment.center,
            child: Text(
              AppConstant.appPoweredBy,
              style: TextStyle(
                color: AppConstant.appTextColor,
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}