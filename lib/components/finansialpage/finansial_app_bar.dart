import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ordo_ui_test/style.dart';

class FinansialAppBar extends StatelessWidget {
  const FinansialAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      height: 54,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 24,
                width: 24,
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: FINANSIAL_ORANGE_COLOR,
                ),
                child: IconButton(
                  iconSize: 20,
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
                "FINANSIAL",
                style: TextStyle(
                  color: FINANSIAL_APP_BAR_TEXT_COLOR,
                  fontFamily: "Poppins",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset(
                  "assets/icons/finansial-app-bar-1.svg",
                  height: 20,
                  width: 20,
                  color: FINANSIAL_BLUE_COLOR,
                ),
                SizedBox(width: 18),
                Icon(
                  Icons.notifications_rounded,
                  size: 26,
                  color: FINANSIAL_BLUE_COLOR,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
