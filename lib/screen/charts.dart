import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:toysyncfusion/screen/radialChart.dart';

import '../data.dart';

class ChartsPage extends StatelessWidget {
  const ChartsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Charts'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                SfCartesianChart(
                  primaryXAxis: CategoryAxis(),
                  title: ChartTitle(text: 'HEM SfCartesianChart'),
                  legend: Legend(isVisible: true),
                  tooltipBehavior: TooltipBehavior(enable: true),
                  series: <LineSeries<SalesData, String>>[
                    LineSeries<SalesData, String>(
                      // Bind data source
                      name: 'DLS true',
                      dataSource: salesData1,
                      xValueMapper: (SalesData sales, _) => sales.year,
                      yValueMapper: (SalesData sales, _) => sales.sales,
                      dataLabelSettings: DataLabelSettings(isVisible: true),
                    ),
                    LineSeries<SalesData, String>(
                      name: 'Default',
                      dataSource: salesData2,
                      xValueMapper: (SalesData sales, _) => sales.year,
                      yValueMapper: (SalesData sales, _) => sales.sales,
                    )
                  ],
                ),
                Column(
                  children: [
                    Text("HEM SfSparkLineChart"),
                    SfSparkLineChart(
                      data: doubleData1,
                      trackball: SparkChartTrackball(
                          activationMode: SparkChartActivationMode.tap),
                      marker: SparkChartMarker(
                          displayMode: SparkChartMarkerDisplayMode.all),
                      labelDisplayMode: SparkChartLabelDisplayMode.all,
                    ),
                  ],
                ),
                //chart 1-3
              ],
            ),
            Row(
              children: [
                SfCircularChart(
                  title: ChartTitle(text: 'HEM SfCircularChart'),
                  legend: Legend(
                    isVisible: true,
                    position: LegendPosition.bottom,
                    overflowMode: LegendItemOverflowMode.wrap,
                  ),
                  series: <PieSeries<PieData, String>>[
                    PieSeries(
                      explode: true,
                      explodeIndex: 3,
                      dataSource: pieData1,
                      xValueMapper: (PieData data, _) => data.xData,
                      yValueMapper: (PieData data, _) => data.yData,
                      pointColorMapper: (PieData data, _) => data.color,
                      dataLabelSettings: DataLabelSettings(isVisible: true),
                    )
                  ],
                ),
                SfSparkBarChart(
                  data: doubleData1,
                  highPointColor: Colors.redAccent,
                  lowPointColor: Colors.green,
                  negativePointColor: Colors.amber,
                  color: Colors.pink,
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(RadialChartPage());
                },
                child: Text("Radial Chart Page"))
          ],
        ),
      ),
    );
  }
}
