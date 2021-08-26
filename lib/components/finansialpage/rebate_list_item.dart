import 'package:flutter/material.dart';
import 'package:ordo_ui_test/style.dart';

class RebateListItem extends StatelessWidget {
  const RebateListItem({
    Key? key,
    required this.id,
    required this.rebate,
    required this.date,
  }) : super(key: key);

  final String id;
  final String rebate;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ID Transaksi",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 12,
                    color: FINANSIAL_GREY_DISABLED_COLOR),
              ),
              Text(
                "#$id",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  color: FINANSIAL_GREY_COLOR,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Rebate",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 12,
                    color: FINANSIAL_GREY_DISABLED_COLOR),
              ),
              Text(
                "Rp. $rebate",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  color: FINANSIAL_SUCCESS_COLOR,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Tanggal",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 12,
                    color: FINANSIAL_GREY_DISABLED_COLOR),
              ),
              Text(
                date,
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  color: FINANSIAL_SUCCESS_COLOR,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
