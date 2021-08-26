import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ordo_ui_test/style.dart';

class LacakAppBar extends StatelessWidget {
  const LacakAppBar({Key? key}) : super(key: key);

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
                  color: LACAK_DARK_GREEN_COLOR,
                ),
                child: IconButton(
                  iconSize: 18,
                  padding: EdgeInsets.zero,
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: SvgPicture.asset("assets/icons/arrow-back.svg"),
                ),
              ),
              SizedBox(width: 16),
              Text(
                "LACAK PESANAN",
                style: TextStyle(
                  color: DARK_COLOR_PORTFOLIO,
                  fontFamily: "Poppins",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SvgPicture.asset(
            "assets/icons/lacak-app-bar.svg",
            color: LACAK_DARK_GREEN_COLOR,
            width: 20,
            height: 20,
          ),
        ],
      ),
    );
  }
}
