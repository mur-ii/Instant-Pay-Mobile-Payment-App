import 'package:flutter/material.dart';

class CardCollectRewards extends StatelessWidget {
  final String image;
  final String title;
  final String deskripsi;
  const CardCollectRewards({
    super.key,
    required this.image,
    required this.title,
    required this.deskripsi,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        width: screenWidth,
        height: 101,
        decoration: BoxDecoration(
            color: Color(0xffEDFFF9), borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset(
                image,
                width: 82,
                height: 83,
              ),
              SizedBox(
                width: 23,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title),
                    SizedBox(
                      height: 7,
                    ),
                    Text(deskripsi),
                    SizedBox(
                      height: 7,
                    ),
                    Container(
                      height: 25,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Color(0xffFFEDF1),
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text('Collect Now'),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
