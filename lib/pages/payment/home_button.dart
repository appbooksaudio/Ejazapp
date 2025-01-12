import 'package:flutter/material.dart';
import 'thanku_page.dart';

class HomeButton extends StatelessWidget {
  HomeButton({Key? key, this.title, this.onTap}) : super(key: key);

  String? title;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          color: themeColor,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top:10.0),
            child: Text(
              title ?? '',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}