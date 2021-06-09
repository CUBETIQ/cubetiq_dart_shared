import 'dart:convert';

import 'package:cubetiq/interfaces.dart';

void main(List<String> args) {
  MyCart.addCart(
    Cart(1, 'Apple', 1),
  );

  MyCart.show();

  MyCart.addCart(
    Cart(1, 'Apple', 2),
  );

  MyCart.show();

  MyCart.inc(1, qty: 2);

  MyCart.show();

  MyCart.dec(1, qty: 4);

  MyCart.show();
}

class Cart implements ToJson {
  final int id;
  final String name;
  double qty;

  Cart(this.id, this.name, this.qty);

  @override
  Map toJson() {
    return {
      'id': id,
      'name': name,
      'qty': qty,
    };
  }
}

class MyCart {
  static final Map<int, Cart> carts = {};

  static void inc(int id, {double qty = 1}) {
    if (carts.containsKey(id)) {
      carts[id]!.qty += qty;
    }
  }

  static void dec(int id, {double qty = 1}) {
    if (carts.containsKey(id)) {
      carts[id]!.qty -= qty;
    }
  }

  static void addCart(Cart cart) {
    if (carts.containsKey(cart.id)) {
      carts[cart.id]!.qty += cart.qty;
    } else {
      carts[cart.id] = cart;
    }
  }

  static void removeCart(Cart cart) {
    if (carts.containsKey(cart.id)) {
      carts.remove(cart.id);
    }
  }

  static void show() {
    var data = carts.map((key, value) => MapEntry(key, jsonEncode(value)));
    print('$data');
  }
}
