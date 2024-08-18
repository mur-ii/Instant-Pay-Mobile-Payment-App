import 'package:flutter/material.dart';
import 'package:instant_pay_mobile_payment_app/components/card_count_balance.dart';

class TabBarBalance extends StatelessWidget {
  const TabBarBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Container(
              height: 406,
              width: screenWidth,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: const Color(0xff4D5DFA).withOpacity(0.3),
                        blurRadius: 6)
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(17.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.arrow_back_ios_new_rounded),
                        Text(
                          'Portfolio Value',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 15),
                        ),
                        Icon(Icons.bar_chart_rounded)
                      ],
                    ),
                    const Text(
                      '₹54,375',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          color: Color(0xff616161)),
                    ),
                    const Text(
                      'In 3 Accounts',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CardCountBalance(
                          bankName: 'Federel Bank',
                          id: '1142524899652',
                          mount: '16,456.05',
                          color: Color(0xffF4EDFF),
                          textBankNameColor: Color(0xff8F4DFA),
                        ),
                        CardCountBalance(
                          bankName: 'States Bank',
                          id: '1142524899652',
                          mount: '2045.05',
                          color: Color(0xffFFEDF1),
                          textBankNameColor: Color(0xffFA4D96),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CardCountBalance(
                          bankName: 'Best Bank',
                          id: '1142524899652',
                          mount: '35873.5',
                          color: Color(0xffEDFFF4),
                          textBankNameColor: Color(0xff4DA7FA),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Container(
                      width: screenWidth,
                      height: 43,
                      decoration: BoxDecoration(
                          color: const Color(0xffEDEFFF),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                        child: Text(
                          'Add / Manage Accounts',
                          style: TextStyle(
                              color: Color(0xff4D5DFA),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
