import 'package:flutter/material.dart';

class OrderNote extends StatelessWidget {
  const OrderNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Catatan Pemesanan",
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna ullamco laboris nisi ut aliquip ex ea commodo.",
            style: TextStyle(
              fontFamily: "Poppins",
              color: Colors.grey.shade500,
            ),
          ),
        ],
      ),
    );
  }
}
