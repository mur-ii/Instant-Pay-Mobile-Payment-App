import 'package:flutter/material.dart';
import 'package:instant_pay_mobile_payment_app/components/card_money_transfer.dart';
import 'package:instant_pay_mobile_payment_app/components/card_ticket_booking.dart';

class TabBarViewWidget extends StatelessWidget {
  const TabBarViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Money Transfer'),
                TextButton(onPressed: () {}, child: const Text('More'))
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardMoneyTransfer(
                  image: 'assets/scanner-icon.png',
                  title: 'Scan QR Code',
                  colorContainer: Color(0xff0054D2),
                ),
                CardMoneyTransfer(
                    image: 'assets/adduser-icon.png',
                    title: 'Send to Contact',
                    colorContainer: Color(0xff00D2D2))
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardMoneyTransfer(
                  image: 'assets/financial-icon.png',
                  title: 'Send to Bank',
                  colorContainer: Color(0xff70FF00),
                ),
                CardMoneyTransfer(
                    image: 'assets/swap-icon.png',
                    title: 'Self Transfer',
                    colorContainer: Color(0xffD200BD))
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Recharge & Bill Payments'),
                TextButton(onPressed: () {}, child: const Text('More'))
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardMoneyTransfer(
                  image: 'assets/iphone-icon.png',
                  title: 'Mobile Recharge',
                  colorContainer: Color(0xff3BC4FF),
                ),
                CardMoneyTransfer(
                    image: 'assets/lightmode-icon.png',
                    title: 'Electricity Bill',
                    colorContainer: Color(0xffFF823B))
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardMoneyTransfer(
                  image: 'assets/play-icon.png',
                  title: 'DTH Recharge',
                  colorContainer: Color(0xff4BFF3B),
                ),
                CardMoneyTransfer(
                    image: 'assets/receipt-icon.png',
                    title: 'Postpaid bill',
                    colorContainer: Color(0xffFF3B8D))
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            const Text('Ticket Booking'),
            const SizedBox(
              height: 14,
            ),
            SizedBox(
              height: 85,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                children: const [
                  CardTicketBooking(
                    title: 'Movies',
                    image: 'assets/videoplay-icon.png',
                  ),
                  CardTicketBooking(
                    title: 'Movies',
                    image: 'assets/videoplay-icon.png',
                  ),
                  CardTicketBooking(
                    title: 'Movies',
                    image: 'assets/videoplay-icon.png',
                  ),
                  CardTicketBooking(
                    title: 'Movies',
                    image: 'assets/videoplay-icon.png',
                  ),
                  CardTicketBooking(
                    title: 'Movies',
                    image: 'assets/videoplay-icon.png',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
