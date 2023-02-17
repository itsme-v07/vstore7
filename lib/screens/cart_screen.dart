import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart.dart';

class CartScreen extends StatelessWidget {
  // const CartScreen({super.key});
  static const routName = '/cart';

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Total:',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  // SizedBox(width: 20),
                  Chip(
                    label: Text(
                      '\$${cart.totalAmount}',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('ORDER NOW'),
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                  ),
                  //         const SizedBox(height: 30),
                  // ClipRRect(
                  //   borderRadius: BorderRadius.circular(4),
                  //   child: Stack(
                  //     children: <Widget>[
                  //       Positioned.fill(
                  //         child: Container(
                  //           decoration: const BoxDecoration(
                  //             gradient: LinearGradient(
                  //               colors: <Color>[
                  //                 Color(0xFF0D47A1),
                  //                 Color(0xFF1976D2),
                  //                 Color(0xFF42A5F5),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       TextButton(
                  //         style: TextButton.styleFrom(
                  //           foregroundColor: Colors.white,
                  //           padding: const EdgeInsets.all(16.0),
                  //           textStyle: const TextStyle(fontSize: 20),
                  //         ),
                  //         onPressed: () {},
                  //         child: const Text('Gradient'),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
