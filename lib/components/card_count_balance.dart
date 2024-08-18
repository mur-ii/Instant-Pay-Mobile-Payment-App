import 'package:flutter/material.dart';

class CardCountBalance extends StatelessWidget {
  final String bankName;
  final String id;
  final String mount;
  final Color color;
  final Color textBankNameColor;
  const CardCountBalance(
      {super.key,
      required this.bankName,
      required this.id,
      required this.mount,
      required this.color,
      required this.textBankNameColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 98,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            bankName,
            style: TextStyle(color: textBankNameColor, fontSize: 16),
          ),
          Text(
            id,
            style: const TextStyle(fontSize: 10),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            mount,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
