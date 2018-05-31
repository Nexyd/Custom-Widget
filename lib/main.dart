import 'package:flutter/material.dart';
import 'CategoryRoute.dart';

void main() {
    runApp(UnitConverterApp());
}

class UnitConverterApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Unit Converter',
            theme: new ThemeData(
                primarySwatch: Colors.red),

            home: CategoryRoute()
        );
    }
}