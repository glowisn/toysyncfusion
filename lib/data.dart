import 'dart:ui';

import 'package:flutter/material.dart';

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}

List<SalesData> salesData1 = [
  SalesData('Jan', 35),
  SalesData('Feb', 28),
  SalesData('Mar', 34),
  SalesData('Apr', 32),
  SalesData('May', 40)
];

List<SalesData> salesData2 = [
  SalesData('Jan', 22),
  SalesData('Feb', 35),
  SalesData('Mar', 27),
  SalesData('Apr', 22),
  SalesData('May', 40)
];

List<double> doubleData1 = [
  1,
  5,
  -6,
  0,
  1,
  -2,
  7,
  -7,
  -4,
  -10,
  13,
  -6,
  7,
  5,
  11,
  5,
  3
];

class PieData {
  PieData(this.xData, this.yData, this.color);
  final String xData;
  final double yData;
  final Color color;
}

final List<PieData> pieData1 = [
  PieData('Alex Cho', 29, Colors.lime),
  PieData('Growbook', 25, Colors.red),
  PieData('Glowisn', 25, Colors.blue),
  PieData('Kim Shin', 22, Colors.green),
];


final List<PieData> pieData2 = [
  PieData('Alex Cho', 660, Colors.deepPurple),
  PieData('Growbook', 400, Colors.deepOrange),
  PieData('Glowisn', 250, Colors.indigo),
  PieData('Kim Shin', 60, Colors.green),
];