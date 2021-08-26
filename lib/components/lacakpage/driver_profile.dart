import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../style.dart';

class DriverProfile extends StatelessWidget {
  const DriverProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 18),
      child: Row(
        children: [
          Container(
            height: 90,
            width: 90,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: -4,
                  child: Container(
                    height: 90,
                    width: 90,
                    child: ClipRRect(
                      child: Image.asset("assets/images/lacak-half-circle.png"),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 80,
                    width: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Image.asset("assets/images/photo.png"),
                    ),
                  ),
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "David Morel",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              Text(
                "B 1201 FA",
                style: TextStyle(
                  fontFamily: "Poppins",
                  color: LACAK_LIGHT_GREEN_COLOR,
                ),
              ),
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                  ),
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      gradient: LACAK_GREEN_GRADIENT_COLOR,
                      boxShadow: [
                        BoxShadow(color: Colors.green.shade100, blurRadius: 10),
                      ],
                    ),
                    child: Center(
                      child: SvgPicture.asset("assets/icons/lacak-message.svg"),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
