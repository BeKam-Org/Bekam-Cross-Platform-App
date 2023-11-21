import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final double? width;
  const CustomButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.width,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(12),
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            backgroundColor: const Color.fromRGBO(144, 168, 88, 1),
            maximumSize: MediaQuery.sizeOf(context)),
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontFamily: 'DM Sans',
          ),
        ),
      ),
    );
  }
}
