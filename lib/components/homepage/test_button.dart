import 'package:flutter/material.dart';

class TestButton extends StatelessWidget {
  final String text;
  final Function onClick;

  const TestButton({
    Key? key,
    required this.text,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onClick(),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
        fixedSize: MaterialStateProperty.all<Size>(Size.fromHeight(58)),
        elevation: MaterialStateProperty.all<double>(0),
      ),
      child: Text(
        text,
        style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w700),
      ),
    );
  }
}
