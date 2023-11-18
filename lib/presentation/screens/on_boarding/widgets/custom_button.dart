import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String title;
  Function() onPressed;
  double? width;
  CustomButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.width,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(12),
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            backgroundColor: Color.fromRGBO(239, 159, 39, 1),
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
