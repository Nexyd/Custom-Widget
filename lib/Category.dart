import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Category extends StatelessWidget {

    final IconData icon;
    final String name;
    final Color color;
    final double height = 70.0;

    const Category({ Key key,
        @required this.icon,
        @required this.name,
        @required this.color }) :
            assert(icon  != null),
            assert(name  != null),
            assert(color != null),
            super(key: key);

    @override
    Widget build(BuildContext context) {
        return new Padding(
            padding: EdgeInsets.all(5.0),
            child: new Container(height: height,
                child: new InkWell(onTap: () {},
                    splashColor: color,
                    borderRadius: BorderRadius
                        .circular(height / 2),

                    child: buildInkWellChild(context)
                )
            ),
        );
    }

    Widget buildInkWellChild(BuildContext context) {
        return new Padding(padding: EdgeInsets.all(16.0),
            child: new Row(children: <Widget>[
                new Icon(icon, size: 40.0),
                new Text(name, style: Theme.of(
                    context).textTheme.headline)
            ])
        );
    }
}