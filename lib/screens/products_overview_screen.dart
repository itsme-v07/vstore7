import 'package:flutter/material.dart';

import '../widgets/products_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VStore'),
        // backgroundColor: Color.fromARGB(255, 12, 0, 82),
      ),
      body: ProductsGrid(),
    );
  }
}
