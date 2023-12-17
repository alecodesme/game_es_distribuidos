import 'package:flutter/material.dart';

class HomeTile extends StatelessWidget {
  final String title;
  final String subTitle;
  const HomeTile({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xff7C0758),
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$title',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Text(
            '$subTitle',
            style: TextStyle(fontSize: 12, color: Colors.white),
          )
        ],
      ),
    );
  }
}
