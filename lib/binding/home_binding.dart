import 'package:get/get.dart';
import 'package:razorpay_demo/controller/razorpay_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RazorpayController());
  }
}
