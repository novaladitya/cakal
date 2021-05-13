import 'package:charts_flutter/flutter.dart' as charts;

class BarChartModel {
  String judul;
  String nama;
  double persentase;
  final charts.Color color;

  BarChartModel({this.nama, this.persentase, this.color});
}
