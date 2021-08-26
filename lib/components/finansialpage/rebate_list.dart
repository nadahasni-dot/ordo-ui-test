import 'package:flutter/material.dart';
import 'package:ordo_ui_test/components/finansialpage/rebate_list_header.dart';
import 'package:ordo_ui_test/components/finansialpage/rebate_list_item.dart';
import 'package:ordo_ui_test/models/rebate_model.dart';

class RebateList extends StatelessWidget {
  RebateList({Key? key}) : super(key: key);

  final List<RebateModel> rebateList = [
    RebateModel(id: "EC1201211", rebate: "150.000", date: "14 Juli 2021"),
    RebateModel(id: "EC1201211", rebate: "150.000", date: "15 Juli 2021"),
    RebateModel(id: "EC1201211", rebate: "150.000", date: "15 Juli 2021"),
    RebateModel(id: "EC1201211", rebate: "150.000", date: "17 Juli 2021"),
    RebateModel(id: "EC1201211", rebate: "150.000", date: "17 Juli 2021"),
    RebateModel(id: "EC1201211", rebate: "150.000", date: "18 Juli 2021"),
  ];

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
          RebateListHeader(),
          Divider(thickness: 1),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: rebateList.length,
            itemBuilder: (context, index) {
              return RebateListItem(
                id: rebateList[index].getId,
                rebate: rebateList[index].getRebate,
                date: rebateList[index].getDate,
              );
            },
          ),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}
