import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ordo_ui_test/style.dart';

class RebateListHeader extends StatelessWidget {
  const RebateListHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Daftar Rebate",
            style: TextStyle(
              color: FINANSIAL_GREY_DISABLED_COLOR,
              fontFamily: "Poppins",
              fontSize: 14,
            ),
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text(
                  "Semua",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Poppins",
                    color: Colors.white,
                  ),
                ),
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 18),
                  ),
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor: MaterialStateProperty.all(
                    FINANSIAL_ORANGE_COLOR,
                  ),
                ),
              ),
              SizedBox(width: 8),
              ElevatedButton(
                child: Row(
                  children: [
                    Text(
                      "Filter",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Poppins",
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 4),
                    SvgPicture.asset(
                      "assets/icons/finansial-filter.svg",
                      height: 10,
                      width: 10,
                    ),
                  ],
                ),
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 18),
                  ),
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor: MaterialStateProperty.all(
                    FINANSIAL_BLUE_COLOR,
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
