import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:toysyncfusion/screen/charts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Syncfusion test',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Syncfusion Practice"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.to(const ChartsPage());
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "syncfusion_flutttttttttter_charts",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      persistentFooterButtons: const [
        Text("""
Note: syncfusion_flutter_package is a commercial package. 
To use this package, you need to have either Syncfusion Commercial License or Free Syncfusion Community license.""")
      ],
    );
  }
}
