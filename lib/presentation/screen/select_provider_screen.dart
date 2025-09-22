import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_ex/layout/default_layout.dart';
import 'package:riverpod_ex/riverpod/select_provider.dart';

class SelectProviderScreen extends ConsumerWidget {
  const SelectProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // select - 특정 값이 바뀔 때만 리빌드 되도록 함
    final state = ref.watch(selectProvider.select((value) => value.isSpicy));
    ref.listen(selectProvider.select((value) => value.isPurchased), (
      previous,
      next,
    ) {
      log('next: $next');
    });

    return DefaultLayout(
      title: 'SelectProviderScreen',
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text('Name: ${state.name}'),
            // Text('Quantity: ${state.quantity}'),
            // Text('Purchased: ${state.isPurchased}'),
            // Text('Spicy: ${state.isSpicy}'),
            Text(state.toString()),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                ref.read(selectProvider.notifier).togglePurchase();
              },
              child: Text('Toggle Purchased'),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                ref.read(selectProvider.notifier).toggleIsSpicy();
              },
              child: Text('Toggle Spicy'),
            ),
          ],
        ),
      ),
    );
  }
}
