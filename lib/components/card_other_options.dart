import 'package:flutter/material.dart';

class CardOtherOptions extends StatelessWidget {
  const CardOtherOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 200,
      width: screenWidth,
      child: Column(
        children: [
          Container(
            width: screenWidth,
            height: 43,
            decoration: BoxDecoration(
              color: Color(0xffEDEFFF),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Your Pay ID'),
                  Spacer(),
                  Text('elsa@524899652'),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(
                    Icons.file_copy_rounded,
                    size: 18,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: screenWidth,
            height: 43,
            decoration: BoxDecoration(
              color: Color(0xffEDEFFF),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Show bank account details'),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
