import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PortfolioBottomAppBar extends StatelessWidget {
  const PortfolioBottomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset("assets/icons/portfolio-bottom-1.svg"),
          SvgPicture.asset("assets/icons/portfolio-bottom-2.svg"),
          SvgPicture.asset("assets/icons/portfolio-bottom-3.svg"),
          SvgPicture.asset("assets/icons/portfolio-bottom-4.svg"),
          SvgPicture.asset("assets/icons/portfolio-bottom-5.svg"),
        ],
      ),
    );
  }
}
