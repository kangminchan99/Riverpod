import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:riverpod_ex/model/shopping_item_model.dart';
import 'package:riverpod_ex/riverpod/state_notifier_provider.dart';

enum FilterState { notSpicy, spicy, all }

final filterProvider = StateProvider<FilterState>((ref) => FilterState.all);

final filteredShoppingListProvider = Provider<List<ShoppingItemModel>>((ref) {
  final shoppingListState = ref.watch(shoppingListProvider);
  final filterState = ref.watch(filterProvider);

  if (filterState == FilterState.all) {
    return shoppingListState;
  }

  return shoppingListState
      .where(
        (item) =>
            filterState == FilterState.spicy ? item.isSpicy : !item.isSpicy,
      )
      .toList();
});
