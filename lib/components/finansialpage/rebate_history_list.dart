import 'package:flutter/material.dart';
import 'package:ordo_ui_test/components/finansialpage/rebate_history_list_item.dart';
import 'package:ordo_ui_test/style.dart';

class RebateHistoryList extends StatelessWidget {
  const RebateHistoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.only(top: 12, right: 20, left: 20, bottom: 12),
            child: Text(
              "Riwayat Rebate",
              style: TextStyle(
                color: FINANSIAL_ORANGE_COLOR,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 6,
            itemBuilder: (context, _) {
              return RebateHistoryListItem();
            },
          ),
          SizedBox(height: 18),
        ],
      ),
    );
  }
}
