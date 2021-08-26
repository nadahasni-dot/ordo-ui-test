import 'package:flutter/material.dart';
import 'package:ordo_ui_test/style.dart';

class CardSummary extends StatelessWidget {
  const CardSummary({
    Key? key,
    required this.label,
    required this.ammount,
  }) : super(key: key);

  final String label;
  final String ammount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 28, vertical: 26),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: <BoxShadow>[
            BoxShadow(blurRadius: 18, color: Colors.grey.shade300)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              color: FINANSIAL_ORANGE_COLOR,
              fontWeight: FontWeight.w700,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 12),
          Text(
            "Rp. $ammount",
            style: TextStyle(
              color: FINANSIAL_GREY_COLOR,
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}
