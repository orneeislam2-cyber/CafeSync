import 'cart_item.dart';
import 'item_model.dart';

class CartData {
  static List<CartItem> cartItems = [];


  static void addItem(Item item, int quantity) {
    for (var cartItem in cartItems) {
      if (cartItem.item.name == item.name) {
        cartItem.quantity += quantity;
        return;
      }
    }
    cartItems.add(CartItem(item: item, quantity: quantity));
  }


  static double getTotalPrice() {
    double total = 0;
    for (var cartItem in cartItems) {
      total += cartItem.item.price * cartItem.quantity;
    }
    return total;
  }

  static void increaseQuantity(int index) {
    cartItems[index].quantity++;
  }


  static void decreaseQuantity(int index) {
    if (cartItems[index].quantity > 1) {
      cartItems[index].quantity--;
    }
  }


  static void removeItem(int index) {
    cartItems.removeAt(index);
  }
}