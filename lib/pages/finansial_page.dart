import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ordo_ui_test/components/finansialpage/card_summary.dart';
import 'package:ordo_ui_test/components/finansialpage/finansial_app_bar.dart';
import 'package:ordo_ui_test/components/finansialpage/portfolio_bottom_app_bar.dart';
import 'package:ordo_ui_test/components/finansialpage/rebate_history_list.dart';
import 'package:ordo_ui_test/components/finansialpage/rebate_list.dart';
import 'package:ordo_ui_test/style.dart';

class FinansialPage extends StatelessWidget {
  const FinansialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BACKGROUND_COLOR_FINANSIAL,
      bottomNavigationBar: FinansialBottomAppBar(),
      body: SafeArea(
        child: Stack(children: [
          Container(
            child: Column(
              children: [
                FinansialAppBar(),
                Expanded(
                    child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(height: 18),
                        CardSummary(
                            label: "TOTAL BONUS", ammount: "4.000.000,00"),
                        SizedBox(height: 18),
                        CardSummary(
                            label: "PENDING BONUS", ammount: "50.000.000,00"),
                        SizedBox(height: 18),
                        RebateList(),
                        SizedBox(height: 18),
                        RebateHistoryList(),
                        SizedBox(height: 100),
                      ],
                    ),
                  ),
                ))
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ShaderMask(
                  shaderCallback: (rectangle) {
                    return LinearGradient(
                      colors: [Color(0x90000000), Colors.transparent],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ).createShader(
                        Rect.fromLTRB(0, 0, rectangle.width, rectangle.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Container(
                    height: 100,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 64,
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  decoration: BoxDecoration(
                    gradient: FINANSIAL_BLUE_GRADIENT_COLOR,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 20),
                      Text(
                        "Complain",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                      SvgPicture.asset(
                          "assets/icons/finansial-arrow-right.svg"),
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
