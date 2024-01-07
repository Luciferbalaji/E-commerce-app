import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String? text;
  final Color color;
  final Icon? icon;
  final VoidCallback? onTap;

  MyButton({Key? key, this.icon, this.text, required this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (icon != null) icon!,
              if (icon != null && text != null) SizedBox(width: 8), // Add spacing if both icon and text are present
              if (text != null) Text(
                text!,
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
