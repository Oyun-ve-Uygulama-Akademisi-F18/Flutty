import 'package:flutter/material.dart';

class ElevatedButtonSocial extends StatelessWidget {
  const ElevatedButtonSocial({
    Key? key,
    required this.color,
    required this.imagePath,
  }) : super(key: key);
  final String imagePath;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 3,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            elevation: 5,
            backgroundColor: color,
            fixedSize: const Size.fromHeight(45),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        child: Image.asset(imagePath),
      ),
    );
  }
}
