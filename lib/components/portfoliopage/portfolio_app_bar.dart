import 'package:flutter/material.dart';
import 'package:ordo_ui_test/style.dart';

class PortfolioAppBar extends StatelessWidget {
  const PortfolioAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      height: 54,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 24,
                width: 24,
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: DARK_COLOR_PORTFOLIO,
                ),
                child: IconButton(
                  iconSize: 18,
                  padding: EdgeInsets.zero,
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back),
                ),
              ),
              SizedBox(width: 16),
              Text(
                "PORTFOLIO VENDOR",
                style: TextStyle(
                  color: DARK_COLOR_PORTFOLIO,
                  fontFamily: "Poppins",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Icon(
            Icons.notifications_rounded,
            color: DARK_COLOR_PORTFOLIO,
            size: 24,
          )
        ],
      ),
    );
  }
}
