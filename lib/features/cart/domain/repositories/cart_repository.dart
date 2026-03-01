import 'package:food_catalog/features/cart/domain/entities/product.dart';

abstract class CartRepository {
  List<Product> getCartItems();
  void addItem(Product product);
  void removeAll();
  bool isItemInCart(String productId);
}