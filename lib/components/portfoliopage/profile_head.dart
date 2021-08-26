import 'package:flutter/material.dart';
import 'package:ordo_ui_test/components/portfoliopage/portfolio_stat.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 87,
            width: 87,
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.5,
                color: Colors.grey.shade300,
              ),
              borderRadius: BorderRadius.circular(87),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(87),
              child: Image.asset("assets/images/team-2.png"),
            ),
          ),
          SizedBox(width: 18),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                PortfolioStat(label: "Rating", stat: 5.0),
                PortfolioStat(label: "Review", stat: 100),
                PortfolioStat(label: "Pesanan", stat: 162),
              ],
            ),
          )
        ],
      ),
    );
  }
}
