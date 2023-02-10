import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/product_detail_screen.dart';
import './screens/products_overview_screen.dart';
import 'providers/products.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // mendaftarkan kelas
    return ChangeNotifierProvider(
      // use create instead builder for the last version Provider package
      create: (context) => Products(),
      child: MaterialApp(
        title: 'VStore',
        // set up tema
        theme: ThemeData(
          //set up tema appbar
          appBarTheme: AppBarTheme(
            backgroundColor: Color.fromARGB(255, 17, 7, 100),
          ),
          fontFamily: 'Lato',
          primaryColor: Color.fromARGB(255, 17, 7, 100),
          accentColor: Colors.deepOrange,
          canvasColor: Colors.white,
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (context) => ProductDetailScreen(),
        },
      ),
    );
  }
}