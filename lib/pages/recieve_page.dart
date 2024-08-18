import 'package:flutter/material.dart';
import 'package:instant_pay_mobile_payment_app/components/card_barcode.dart';
import 'package:instant_pay_mobile_payment_app/components/card_other_options.dart';

class RecievePage extends StatelessWidget {
  static const routeName = '/recieve';
  const RecievePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CardBarcode(),
                SizedBox(
                  height: 15,
                ),
                Text('Other Options'),
                SizedBox(
                  height: 15,
                ),
                CardOtherOptions()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
