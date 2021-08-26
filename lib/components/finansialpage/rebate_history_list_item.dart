import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ordo_ui_test/style.dart';

class RebateHistoryListItem extends StatelessWidget {
  const RebateHistoryListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 42,
            width: 42,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(42),
              gradient: FINANSIAL_BLUE_GRADIENT_COLOR,
            ),
            child: Center(
              child: SvgPicture.asset(
                "assets/icons/finansial-ticket.svg",
                width: 20,
                height: 20,
              ),
            ),
          ),
          SizedBox(width: 14),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "#REBATEC12021",
                  style: TextStyle(fontFamily: "Poppins", fontSize: 14),
                ),
                Text(
                  "20 Juli 2021",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 12,
                    color: FINANSIAL_GREY_DISABLED_COLOR,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                decoration: BoxDecoration(
                  color: FINANSIAL_ORANGE_COLOR,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Rp. 150.000",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
