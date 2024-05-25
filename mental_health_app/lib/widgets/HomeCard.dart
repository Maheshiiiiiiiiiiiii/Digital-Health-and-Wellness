import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {

  final String topic;
  final String imagePath;

  const HomeCard({super.key, required this.topic, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                topic,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
            SizedBox(
              width: 75.0,
              height:75.0,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ],

        ),
      )
      ),
    );
  }
}
