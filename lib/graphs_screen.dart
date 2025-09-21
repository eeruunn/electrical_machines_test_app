import 'package:flutter/material.dart';
import 'package:machines_test_app/models/chartData.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GraphsScreen extends StatefulWidget {
  const GraphsScreen({super.key, required this.data});
  final List<ChartData> data;
  @override
  State<GraphsScreen> createState() => _GraphsScreenState();
}

class _GraphsScreenState extends State<GraphsScreen> {
  List<ChartData>? _chartData;
  TooltipBehavior? _tooltipBehavior;
  @override
  void initState() {
    _chartData = widget.data;
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SfCartesianChart(
        plotAreaBorderWidth: 0,
        title: ChartTitle(text: 'Motor vs Generator'),
        primaryXAxis: NumericAxis(
          majorGridLines: MajorGridLines(width: 0),

          // labelPlacement: LabelPlacement.onTicks,
        ),
        primaryYAxis: const NumericAxis(
          minimum: 0,
          maximum: 100,
          axisLine: AxisLine(width: 0),
          edgeLabelPlacement: EdgeLabelPlacement.shift,
          labelFormat: '{value}%',
          majorTickLines: MajorTickLines(size: 0),
        ),
        series: [
          SplineSeries<ChartData, double>(
            dataSource: _chartData,
            xValueMapper: (ChartData data, int index) => data.outputpower,
            yValueMapper: (ChartData data, int index) => data.mefficiency,
            markerSettings: const MarkerSettings(isVisible: true),
            name: 'Motor',
          ),
          SplineSeries<ChartData, double>(
            dataSource: _chartData,
            xValueMapper: (ChartData data, int index) => data.outputpower,
            yValueMapper: (ChartData data, int index) => data.gefficiency,
            markerSettings: const MarkerSettings(isVisible: true),
            name: 'Generator',
          ),
        ],
        legend: Legend(isVisible: true),
        tooltipBehavior: _tooltipBehavior,
      ),
    );
  }
}
