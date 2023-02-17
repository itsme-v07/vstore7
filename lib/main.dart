import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/cart_screen.dart';
import './providers/cart.dart';
import './screens/product_detail_screen.dart';
import './screens/products_overview_screen.dart';
import './providers/products.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // mendaftarkan kelas
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          // use create instead builder for the last version Provider package
          create: (context) => Products(),
          // value shortcut for context
          // value: Products(),
        ),
        ChangeNotifierProvider(
          create: (context) => Cart(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'VStore',
        // set up tema
        theme: ThemeData(
          //set up tema appbar
          appBarTheme: AppBarTheme(
            backgroundColor: Color.fromARGB(255, 17, 7, 100),
          ),
          textTheme: TextTheme(
            subtitle1: TextStyle(color: Colors.white),
          ),
          fontFamily: 'Lato',
          primaryColor: Color.fromARGB(255, 17, 7, 100),
          accentColor: Colors.deepOrange,
          canvasColor: Colors.white,
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (context) => ProductDetailScreen(),
          CartScreen.routName: (context) => CartScreen(),
        },
      ),
    );
  }
}
