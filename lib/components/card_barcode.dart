import 'package:flutter/material.dart';

class CardBarcode extends StatelessWidget {
const CardBarcode({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      height: 358,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recieve Money'),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.cancel)),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              height: 280,
              width: screenWidth,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/barcode.png',
                      ),
                      fit: BoxFit.cover)),
            )
          ],
        ),
      ),
    );
  }
}