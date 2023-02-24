import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/app_drawe_.dart';
import '../providers/orders.dart' show Orders;
import '../widgets/order_item.dart';

class OrdersScreen extends StatelessWidget {
  // const OrdersScreen({super.key});
  static const routeName = '/orders';

  @override
  Widget build(BuildContext context) {
    final ordersData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Orders'),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemBuilder: (context, i) => OrderItem(ordersData.orders[i]),
        itemCount: ordersData.orders.length,
      ),
    );
  }
}
