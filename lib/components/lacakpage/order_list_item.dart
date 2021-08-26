import 'package:flutter/material.dart';
import 'package:ordo_ui_test/style.dart';

class OrderListItem extends StatelessWidget {
  const OrderListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade200, blurRadius: 18)
                    ],
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: Image.asset("assets/images/strawberry.png",
                      fit: BoxFit.scaleDown),
                ),
                SizedBox(width: 18),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Strawberry",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "100 Gram",
                      style: TextStyle(
                          fontFamily: "Poppins", color: Colors.grey.shade700),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Rp. 75.000",
                      style: TextStyle(
                        color: LACAK_DARK_GREEN_COLOR,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      "2 item",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 14),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Catatan Item",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna ullamco laboris nisi ut aliquip ex ea commodo.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.grey.shade500,
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 8),
                Divider(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
