import 'package:flutter/material.dart';
import 'package:instant_pay_mobile_payment_app/components/card_money_transfer.dart';
import 'package:instant_pay_mobile_payment_app/components/card_more_services.dart';
import 'package:instant_pay_mobile_payment_app/components/card_recent_transactions.dart';
import 'package:instant_pay_mobile_payment_app/components/card_ticket_booking.dart';

class TabBarHome extends StatelessWidget {
  const TabBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Money Transfer',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
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
                Text(
                  'Recharge & Bill Payments',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
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
            Text(
              'Ticket Booking',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
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
                    title: 'Trains',
                    image: 'assets/train-icon.png',
                  ),
                  CardTicketBooking(
                    title: 'Bus',
                    image: 'assets/bus-icon.png',
                  ),
                  CardTicketBooking(
                    title: 'Flights',
                    image: 'assets/flights-icon.png',
                  ),
                  CardTicketBooking(
                    title: 'Card',
                    image: 'assets/car-icon.png',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'More Services',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            const SizedBox(
              height: 14,
            ),
            SizedBox(
              height: 85,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                children: const [
                  CardMoreServices(
                    title: 'Invest',
                    image: 'assets/invest-icon.png',
                  ),
                  CardMoreServices(
                    title: 'Loans',
                    image: 'assets/loans-icon.png',
                  ),
                  CardMoreServices(
                    title: 'Insurance',
                    image: 'assets/heart-icon.png',
                  ),
                  CardMoreServices(
                    title: 'Fastag',
                    image: 'assets/fastag-icon.png',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Recent Transactions',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            const SizedBox(
              height: 14,
            ),
            SizedBox(
              height: 85,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                children: const [
                  CardRecentTransactions(
                    title: 'Ananya',
                    image: 'assets/profile.png',
                  ),
                  CardRecentTransactions(
                    title: 'Laya Nair',
                    image: 'assets/profile.png',
                  ),
                  CardRecentTransactions(
                    title: 'Flynn',
                    image: 'assets/profile.png',
                  ),
                  CardRecentTransactions(
                    title: 'Jioo',
                    image: 'assets/profile.png',
                  ),
                  CardRecentTransactions(
                    title: 'Electricity',
                    image: 'assets/profile.png',
                  ),
                  CardRecentTransactions(
                    title: 'Muuri',
                    image: 'assets/profile.png',
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
