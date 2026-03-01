import 'package:flutter/material.dart';
import 'package:food_catalog/features/cart/domain/repositories/cart_repository.dart';

class CartProvider extends ChangeNotifier {
  final CartRepository _repository;

  CartProvider({required CartRepository repository}) : _repository = repository;

  
} 