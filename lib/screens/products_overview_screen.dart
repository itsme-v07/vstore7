import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:vstore/providers/products.dart';

import '../widgets/products_grid.dart';

enum Filters {
  Favorite,
  All,
}

class ProductsOverviewScreen extends StatefulWidget {
  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  var _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VStore'),
        // filtering logic app wide state
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (Filters selectedValue) {
              setState(() {
                if (selectedValue == Filters.Favorite) {
                  _showOnlyFavorites = true;
                } else {
                  _showOnlyFavorites = false;
                }
              });
            },
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('Only Favorites'),
                value: Filters.Favorite,
              ),
              PopupMenuItem(
                child: Text('Show All'),
                value: Filters.All,
              ),
            ],
          )
        ],
        // backgroundColor: Color.fromARGB(255, 12, 0, 82),
      ),
      body: ProductsGrid(_showOnlyFavorites),
    );
  }
}
