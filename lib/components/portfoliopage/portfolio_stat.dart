import 'package:flutter/material.dart';
import 'package:ordo_ui_test/style.dart';

class PortfolioStat extends StatelessWidget {
  const PortfolioStat({
    Key? key,
    required this.label,
    required this.stat,
  }) : super(key: key);

  final String label;
  final String stat;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            stat,
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: DARK_TEXT_COLOR_PORTFOLIO),
          ),
          Text(
            label,
            style: TextStyle(
                fontFamily: "Poppins", color: DARK_TEXT_COLOR_PORTFOLIO),
          ),
        ],
      ),
    );
  }
}
