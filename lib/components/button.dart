import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyButton extends StatelessWidget {
  final String icons;
  const MyButton({super.key, required this.icons});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(16)),
      child: IconButton(
        icon: SvgPicture.asset(icons),
        onPressed: () {},
      ),
    );
  }
}
