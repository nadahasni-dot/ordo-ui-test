import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FinansialBottomAppBar extends StatelessWidget {
  const FinansialBottomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [          
          SvgPicture.asset("assets/icons/finansial-bottom-1.svg"),
          SvgPicture.asset("assets/icons/finansial-bottom-2.svg"),
          SvgPicture.asset("assets/icons/finansial-bottom-3.svg"),          
        ],
      ),
    );
  }
}
