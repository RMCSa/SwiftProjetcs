import 'package:flutter/material.dart';
import 'screens/monitorList.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Monitores DPD",
    home: MonitorListScreen(),
  ));
}
