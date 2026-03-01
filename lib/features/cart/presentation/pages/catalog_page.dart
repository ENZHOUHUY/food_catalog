import 'package:flutter/material.dart';
import 'package:food_catalog/core/constants/app_constants.dart';
import 'package:food_catalog/core/routes/app_router.dart';
import 'package:food_catalog/features/cart/domain/entities/product.dart';
import 'package:food_catalog/features/cart/presentation/widgets/add_button_widget.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      Product(id: '1', name: 'Ikan Bakar', price: '25000'),
      Product(id: '2', name: 'Udang Saus Padang', price: '30000'),
      Product(id: '3', name: 'Gurame Goreng', price: '20000'),
      Product(id: '4', name: 'Es Teh', price: '10000'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.catalogTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () => Navigator.pushNamed(context, AppRouter.cart),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            trailing: AddButtonWidget(product: products[index]),
          );
        },
      ),
    );
  }
}