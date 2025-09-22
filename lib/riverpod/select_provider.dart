import 'package:flutter_riverpod/legacy.dart';
import 'package:riverpod_ex/model/shopping_item_model.dart';

class SelectNotifierProvider extends StateNotifier<ShoppingItemModel> {
  SelectNotifierProvider()
    : super(
        ShoppingItemModel(
          name: '김치',
          quantity: 3,
          isPurchased: false,
          isSpicy: true,
        ),
      );

  togglePurchase() {
    state = state.copyWith(isPurchased: !state.isPurchased);
  }

  toggleIsSpicy() {
    state = state.copyWith(isSpicy: !state.isSpicy);
  }
}

final selectProvider =
    StateNotifierProvider<SelectNotifierProvider, ShoppingItemModel>(
      (ref) => SelectNotifierProvider(),
    );
