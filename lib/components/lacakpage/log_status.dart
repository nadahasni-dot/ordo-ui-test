import 'package:flutter/material.dart';
import 'package:ordo_ui_test/style.dart';

class LogStatus extends StatelessWidget {
  const LogStatus(
      {Key? key,
      required this.label,
      required this.status,
      required this.leading})
      : super(key: key);

  final String label;
  final String status;
  final Widget leading;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 50),
      child: Row(
        children: [
          leading,
          SizedBox(width: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontFamily: "Poppins",
                  color: LACAK_DARK_GREEN_COLOR,
                  fontSize: 16,
                ),
              ),
              Text(
                status,
                style: TextStyle(
                  fontFamily: "Poppins",
                  color: Colors.black87,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
