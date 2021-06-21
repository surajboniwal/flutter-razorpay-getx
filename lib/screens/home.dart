import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:razorpay_demo/controller/razorpay_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.find<RazorpayController>().createOrder();
          },
          child: Text('Pay'),
        ),
      ),
    );
  }
}
