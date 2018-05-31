import 'package:flutter/material.dart';
import 'Category.dart';

class CategoryRoute extends StatelessWidget {

    const CategoryRoute();

    final int maxColors = 8;
    static const _names = <String>[
        'Length', 'Area', 'Volume',
        'Mass',   'Time', 'Digital Storage',
        'Energy', 'Currency'
    ];

    static const _colors = <Color>[
        Colors.teal,
        Colors.orange,
        Colors.pinkAccent,
        Colors.blueAccent,
        Colors.yellow,
        Colors.greenAccent,
        Colors.purpleAccent,
        Colors.red
    ];

    @override
    Widget build(BuildContext context) {
        List<Widget> categories = buildCategories();

        return Scaffold(
            backgroundColor: Colors.green[100],
            appBar: new AppBar(title:
            new Text('Unit Converter')),

            body: new ListView(children: categories)
        );
    }

    List<Widget> buildCategories() {

        var categories = List<Widget>();
        for (int i = 0; i < _colors.length; i++) {
            categories.add(new Category(color: _colors[i],
                name: _names[i], icon: Icons.cake));
        }

        return categories;
    }
}