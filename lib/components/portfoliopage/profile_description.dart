import 'package:flutter/material.dart';
import 'package:ordo_ui_test/style.dart';

class ProfileDescription extends StatelessWidget {
  const ProfileDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Dina Florist",
            textAlign: TextAlign.left,
            style:
                TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w600, color: DARK_TEXT_COLOR_PORTFOLIO),
          ),
          Text(
            "Toko Bunga terbaik se Indonesia Raya \nHarga Murah Produk Berkualitas",
            textAlign: TextAlign.left,
            style: TextStyle(fontFamily: "Poppins", color: DARK_TEXT_COLOR_PORTFOLIO),
          ),
          SizedBox(height: 8),
          OutlinedButton(
            onPressed: () {},
            child: Text(
              "PORTFOLIO",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: DARK_TEXT_COLOR_PORTFOLIO),
            ),
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              backgroundColor: MaterialStateProperty.all(Colors.white),              
            ),
          ),
        ],
      ),
    );
  }
}
