import 'package:flutter/material.dart';

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
                TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w600),
          ),
          Text(
            "Toko Bunga terbaik se Indonesia Raya \nHarga Murah Produk Berkualitas",
            textAlign: TextAlign.left,
            style: TextStyle(fontFamily: "Poppins"),
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
                  color: Colors.black87),
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
