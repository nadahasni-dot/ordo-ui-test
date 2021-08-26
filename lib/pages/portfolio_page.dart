import 'package:flutter/material.dart';
import 'package:ordo_ui_test/components/portfoliopage/portfolio_app_bar.dart';
import 'package:ordo_ui_test/components/portfoliopage/portfolio_bottom_app_bar.dart';
import 'package:ordo_ui_test/components/portfoliopage/portfolio_grid_item.dart';
import 'package:ordo_ui_test/components/portfoliopage/profile_description.dart';
import 'package:ordo_ui_test/components/portfoliopage/profile_head.dart';
import 'package:ordo_ui_test/models/portfolio_model.dart';

class PortfolioPage extends StatelessWidget {
  PortfolioPage({Key? key}) : super(key: key);

  final List<PortfolioModel> listPortfolio = [
    PortfolioModel(
      customer: "Nama Customer",
      image: "assets/images/portfolio-1.jpg",
      rating: 5.0,
    ),
    PortfolioModel(
      customer: "Nama Customer",
      image: "assets/images/portfolio-2.jpg",
      rating: 5.0,
    ),
    PortfolioModel(
      customer: "Nama Customer",
      image: "assets/images/portfolio-1.jpg",
      rating: 5.0,
    ),
    PortfolioModel(
      customer: "Nama Customer",
      image: "assets/images/portfolio-1.jpg",
      rating: 5.0,
    ),
    PortfolioModel(
      customer: "Nama Customer",
      image: "assets/images/portfolio-1.jpg",
      rating: 5.0,
    ),
    PortfolioModel(
      customer: "Nama Customer",
      image: "assets/images/portfolio-2.jpg",
      rating: 5.0,
    ),
    PortfolioModel(
      customer: "Nama Customer",
      image: "assets/images/portfolio-1.jpg",
      rating: 5.0,
    ),
    PortfolioModel(
      customer: "Nama Customer",
      image: "assets/images/portfolio-1.jpg",
      rating: 5.0,
    ),
    PortfolioModel(
      customer: "Nama Customer",
      image: "assets/images/portfolio-2.jpg",
      rating: 5.0,
    ),
    PortfolioModel(
      customer: "Nama Customer",
      image: "assets/images/portfolio-2.jpg",
      rating: 5.0,
    ),
    PortfolioModel(
      customer: "Nama Customer",
      image: "assets/images/portfolio-1.jpg",
      rating: 5.0,
    ),
    PortfolioModel(
      customer: "Nama Customer",
      image: "assets/images/portfolio-1.jpg",
      rating: 5.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: PortfolioBottomAppBar(),
      body: SafeArea(        
        child: Container(
          child: Column(
            children: <Widget>[
              PortfolioAppBar(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(height: 18),
                        ProfileWidget(),
                        SizedBox(height: 8),
                        ProfileDescription(),
                        SizedBox(height: 14),
                        GridView.count(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          crossAxisCount: 3,
                          mainAxisSpacing: 2,
                          crossAxisSpacing: 2,
                          children: listPortfolio
                              .map((portfolio) => PortfolioGridItem(
                                  rating: portfolio.getRating,
                                  customer: portfolio.getCustomer,
                                  image: portfolio.getImage))
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
