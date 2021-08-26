class RebateModel {
  final String id;
  final String rebate;
  final String date;

  RebateModel({
    required this.id,
    required this.rebate,
    required this.date,
  });

  String get getId => this.id;
  String get getRebate => this.rebate;
  String get getDate => this.date;
}