import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:cakal/widget/barchart_model.dart';

class BarChartGraph extends StatefulWidget {
  final List<BarChartModel> data;
  const BarChartGraph({Key key, this.data}) : super(key: key);

  @override
  _BarChartGraphState createState() => _BarChartGraphState();
}

class _BarChartGraphState extends State<BarChartGraph> {
  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
          id: "Persentase",
          data: widget.data,
          domainFn: (BarChartModel series, _) => series.nama,
          measureFn: (BarChartModel series, _) => series.persentase,
          colorFn: (BarChartModel series, _) => series.color),
    ];
    return charts.BarChart(series);
  }
}
