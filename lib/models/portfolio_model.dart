class PortfolioModel {
  final String image;
  final double rating;
  final String customer;

  PortfolioModel({
    required this.image,
    required this.rating,
    required this.customer,
  });

  double get getRating => this.rating;
  String get getImage => this.image;
  String get getCustomer => this.customer;
}
