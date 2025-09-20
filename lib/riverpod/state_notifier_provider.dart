import 'package:flutter_riverpod/legacy.dart';
import 'package:riverpod_ex/model/shopping_item_model.dart';

class ShoppingListNotifier extends StateNotifier<List<ShoppingItemModel>> {
  ShoppingListNotifier()
    : super([
        ShoppingItemModel(
          name: 'Apples',
          quantity: 5,
          isPurchased: false,
          isSpicy: false,
        ),
        ShoppingItemModel(
          name: 'Bananas',
          quantity: 3,
          isPurchased: true,
          isSpicy: false,
        ),
        ShoppingItemModel(
          name: 'Chili Peppers',
          quantity: 10,
          isPurchased: true,
          isSpicy: true,
        ),
        ShoppingItemModel(
          name: 'Rice',
          quantity: 1,
          isPurchased: true,
          isSpicy: false,
        ),
        ShoppingItemModel(
          name: 'Milk',
          quantity: 1,
          isPurchased: true,
          isSpicy: false,
        ),
      ]);

  void toggleIsPurchased({required String name}) {
    state = state
        .map(
          (item) => item.name == name
              ? ShoppingItemModel(
                  name: item.name,
                  quantity: item.quantity,
                  isPurchased: !item.isPurchased,
                  isSpicy: item.isSpicy,
                )
              : item,
        )
        .toList();
  }

  void removeItem(ShoppingItemModel item) {
    state = state.where((i) => i != item).toList();
  }
}

final shoppingListProvider =
    StateNotifierProvider<ShoppingListNotifier, List<ShoppingItemModel>>(
      (ref) => ShoppingListNotifier(),
    );
