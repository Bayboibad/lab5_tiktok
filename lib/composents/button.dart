import 'package:flutter/material.dart';
import 'package:lab5_tiktok/configs/colors.dart';

class ButtonElv extends StatelessWidget {
  final Function() onTap;
  final String title;
  const ButtonElv({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: StyleColors.colorBackgroud,
        fixedSize: Size(MediaQuery.of(context).size.width*1, 50)
      ),
      onPressed: onTap,
       child: Text(title, style: TextStyle(color: StyleColors.colorWhite, fontSize:18),));
  }
}
