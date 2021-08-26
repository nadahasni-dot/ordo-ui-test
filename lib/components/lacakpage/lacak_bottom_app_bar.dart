import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LacakBottomAppBar extends StatelessWidget {
  const LacakBottomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset("assets/icons/lacak-1.svg"),
          SvgPicture.asset("assets/icons/lacak-2.svg"),
          SvgPicture.asset("assets/icons/lacak-3.svg"),
          SvgPicture.asset("assets/icons/lacak-4.svg"),
          SvgPicture.asset("assets/icons/lacak-5.svg"),
        ],
      ),
    );
  }
}
