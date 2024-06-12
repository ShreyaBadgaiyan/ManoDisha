import 'package:flutter/material.dart';

class OpenScreenFeatures extends StatelessWidget {
  final String image;
  final String headText;
  final String descText;

  const OpenScreenFeatures({super.key, required this.image, required this.headText, required this.descText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 230,
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black, // Border color
          width: 1.0, // Border width
        ),
        color: const Color(0xFFC9D8EF),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Container(
              child: Image.asset(
                image,
                height: 150,
                width: 400,
              ),
            ),
            Text(
              headText,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Text(
              descText,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 1),
          ],
        ),
      ),
    );
  }
}
