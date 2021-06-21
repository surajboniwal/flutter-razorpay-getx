import 'package:get/get.dart';
import 'package:razorpay_demo/constants.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class RazorpayController extends GetxController {
  Razorpay razorPay = Razorpay();

  @override
  void onInit() {
    super.onInit();
    razorPay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    razorPay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    razorPay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void onClose() {
    razorPay.clear();
  }

  _handlePaymentSuccess(PaymentSuccessResponse response) {
    print(response.paymentId);
  }

  _handlePaymentError(PaymentFailureResponse response) {
    print('Error');
  }

  _handleExternalWallet(ExternalWalletResponse response) {
    print('External wallet');
  }

  createOrder() {
    razorPay.open(
      {
        'key': RAZORPAY_API_KEY_TEST,
        'amount': 100,
        'name': 'Demo user',
        'description': 'Fine T-Shirt',
        'prefill': {
          'contact': '9974849404',
          'email': 'test@demouser.com',
        }
      },
    );
  }
}
