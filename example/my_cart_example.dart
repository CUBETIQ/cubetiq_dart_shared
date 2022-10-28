import 'package:cubetiq/model.dart';

void main(List<String> args) {
  MyCart.addCart(
    Cart(id: 1, name: 'Apple', qty: 1),
  );

  MyCart.show();

  MyCart.addCart(
    Cart(id: 1, name: 'Apple', qty: 2),
  );

  MyCart.show();

  MyCart.inc(1, qty: 2);

  MyCart.show();

  MyCart.dec(1, qty: 4);

  MyCart.show();
}

class Cart extends BaseModel<Cart> {
  final int id;
  final String? name;
  double qty;

  Cart({this.id = -1, this.name, this.qty = 0});

  @override
  Cart fromMap(Map<String, dynamic> map) {
    return Cart(
      id: map['id'],
      name: map['name'],
      qty: map['qty'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
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
    var data = carts.map((key, value) => MapEntry(key, value));
    var json = data.map((key, value) => MapEntry(key, value.toJson()));
    var model = json.map((key, value) => MapEntry(key, Cart().fromJson(value)));
    print('================ Map =================');
    print('$data');
    print('================ Json =================');
    print('$json');
    print('================ Model =================');
    print('$model');
  }
}
