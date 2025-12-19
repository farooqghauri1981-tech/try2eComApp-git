import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../utils/app_constant.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppConstant.appSecondaryColor,
        title: Text(
          'Welcome to my Store',
          style: TextStyle(color: AppConstant.appTextColor),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Lottie.asset('assets/images/cart.json')
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: Text(
                'Happy Shopping',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(
              height: Get.height / 12,
              ),
            Material(
              child: Container(
                width: Get.width/1.2,
                height: Get.height/12,
                child: TextButton.icon(
                  icon: Image.asset(
                    'assets/images/google_sign_in.png',
                    width: Get.width / 12,
                    height: Get.height / 12,
                  ),
                  label: Text('Sign in with Google'),
                  onPressed: (){},
                ),
              ),
             )
          ],
        ),
      ),
    );
  }
}