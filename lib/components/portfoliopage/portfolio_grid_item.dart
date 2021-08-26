import 'package:flutter/material.dart';
import 'package:ordo_ui_test/style.dart';

class PortfolioGridItem extends StatelessWidget {
  const PortfolioGridItem({
    Key? key,
    required this.rating,
    required this.customer,
    required this.image,
  }) : super(key: key);

  final double rating;
  final String customer;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          ClipRRect(
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    gradient: DARK_GRADIENT,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star_rate_rounded,
                        size: 14,
                        color: Colors.yellow.shade700,
                      ),
                      Text(
                        rating.toString(),
                        style: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.white,
                            fontSize: 11),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black87.withOpacity(0.4),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        customer,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: "Poppins",
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
