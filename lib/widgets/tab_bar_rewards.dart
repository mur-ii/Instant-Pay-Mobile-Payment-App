import 'package:flutter/material.dart';
import 'package:instant_pay_mobile_payment_app/components/card_collect_rewards.dart';
import 'package:instant_pay_mobile_payment_app/components/card_mount_reward.dart';

class TabBarRewards extends StatelessWidget {
  const TabBarRewards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardMountReward(
                title: 'Casbacks earned',
                mount: '₹507',
                deskripsi: '+88 Rs This month',
                textButton: 'View your cashback history'),
            SizedBox(
              height: 15,
            ),
            Text('Scrachcards won'),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 101,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                children: [
                  Container(
                    height: 101,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Color(0xffFFEDFF),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    height: 101,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Color(0xffEDEFFF),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    height: 101,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Color(0xffEDFFF9),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text('Collect Rewards'),
            SizedBox(
              height: 10,
            ),
            CardCollectRewards(
              image: 'assets/image-1.png',
              title: 'Flat 50 off On food Delivery',
              deskripsi: 'On orders above 99 on Swaggy, Somato',
            ),
            CardCollectRewards(
              image: 'assets/image-1.png',
              title: 'Flat 50 off On food Delivery',
              deskripsi: 'On orders above 99 on Swaggy, Somato',
            ),
          ],
        ),
      ),
    );
  }
}
