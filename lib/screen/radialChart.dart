import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../data.dart';

class RadialChartPage extends StatelessWidget {
  const RadialChartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SfCircularChart(
          title: ChartTitle(text: 'HEM RadialBarChart'),
          backgroundColor: Colors.black54,
          legend: Legend(isVisible: true),
          series: <RadialBarSeries<PieData, String>>[
            RadialBarSeries(
              dataSource: pieData2,
              xValueMapper: (PieData data, _) => data.xData,
              yValueMapper: (PieData data, _) => data.yData,
              pointColorMapper: (PieData data, _) => data.color,
              dataLabelSettings: DataLabelSettings(isVisible: false),
              cornerStyle: CornerStyle.bothCurve,
              maximumValue: 500,
              gap: '6%',
              radius: '80%',
              // onPointTap: (ChartPointDetails details) {
              //   print(details.dataPoints);
              // },
              trackColor : Colors.grey,
              // trackBorderColor: Colors.amberAccent
            )
          ],
        ),
      ),
    );
  }
}
