import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_ex/layout/default_layout.dart';
import 'package:riverpod_ex/model/shopping_item_model.dart';
import 'package:riverpod_ex/riverpod/state_notifier_provider.dart';

class StateNotifierProviderScreen extends ConsumerWidget {
  const StateNotifierProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<ShoppingItemModel> state = ref.watch(shoppingListProvider);

    return DefaultLayout(
      title: 'StateNotifier Provider',
      body: ListView(
        children: state
            .map(
              (item) => CheckboxListTile(
                title: Text(item.name),
                value: item.isPurchased,
                onChanged: (value) {
                  ref
                      .read(shoppingListProvider.notifier)
                      .toggleIsPurchased(name: item.name);
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
