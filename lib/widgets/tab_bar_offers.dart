import 'package:flutter/material.dart';
import 'package:instant_pay_mobile_payment_app/components/card_offers.dart';

class TabBarOffers extends StatelessWidget {
  const TabBarOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12,),
      child: ListView(
        children: const [
          CardOffers(
              image: 'assets/image-1.png',
              title: 'Mobile Recharge Offer Use Code FIRST20',
              deskripsi:
                  'Get 20 % Instant cashback upto Rs 50 on your firs mobile recharge. T&C apply',
              color: Color(0xffEDF6FF)),
          CardOffers(
              image: 'assets/image-2.png',
              title: 'DTH Recharge Offer Use Code FIRSDTHT20',
              deskripsi:
                  'Get 20 % Instant cashback upto Rs 50 on your first DTH recharge. T&C apply',
              color: Color(0xffFFEDED)),
          CardOffers(
              image: 'assets/image-3.png',
              title: 'Flipcart Shopping Offer',
              deskripsi:
                  'Shop on Flipcart using our payment system to get upto 50% cashback . T&C appply',
              color: Color(0xffEDFFEF)),
          CardOffers(
              image: 'assets/image-4.png',
              title: 'Money Transfer Offer',
              deskripsi:
                  'Get a scratch card with assuerd casbck and coupons on Money Transfer of Rs 500 or more . T&C apply',
              color: Color(0xffFFFFED)),
          CardOffers(
              image: 'assets/image-5.png',
              title: 'Rs 50 Off on Flights',
              deskripsi:
                  'Get instant discount on flat 50 Rs on Flight ticket booking. T&C apply\nGo to offer page',
              color: Color(0xffF2EDFF)),
        ],
      ),
    );
  }
}
