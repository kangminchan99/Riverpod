import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_ex/layout/default_layout.dart';
import 'package:riverpod_ex/riverpod/code_generation_provider.dart';

class CodeGenerationScreen extends ConsumerWidget {
  const CodeGenerationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    log('전체 빌드');
    final state1 = ref.watch(gStateProvider);
    final state2 = ref.watch(gStateFutureProvider);
    final state3 = ref.watch(gStateFuture2Provider);
    final state4 = ref.watch(gStateMultiplyProvider(number1: 10, number2: 20));

    return DefaultLayout(
      title: 'CodeGenerationScreen',
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('State1 $state1'),
            SizedBox(height: 16),
            state2.when(
              data: (data) => Text('State2 $data'),
              error: (error, stackTrace) => Text('Error $error'),
              loading: () => CircularProgressIndicator(),
            ),
            SizedBox(height: 16),
            state3.when(
              data: (data) => Text('State3 $data'),
              error: (error, stackTrace) => Text('Error $error'),
              loading: () => CircularProgressIndicator(),
            ),
            SizedBox(height: 16),
            Text('State4 $state4'),
            SizedBox(height: 16),
            Consumer(
              builder: (context, ref, child) {
                log('부분 빌드');
                final state5 = ref.watch(tStateProvider);
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('State5 $state5'), if (child != null) child],
                );
              },
              child: Text('렌더링 되지 않는 child'),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ref.read(tStateProvider.notifier).decrement();
                  },
                  child: Text('Decrement'),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    ref.read(tStateProvider.notifier).increment();
                  },
                  child: Text('Increment'),
                ),
              ],
            ),
            SizedBox(height: 16),
            // invalidate()
            // 유효하지 않게 하다 -> state를 더 이상 유효하지 않게 하여 초기 상태로 초기화 한다.
            ElevatedButton(
              onPressed: () {
                ref.invalidate(tStateProvider);
              },
              child: Text('Invalidate'),
            ),
          ],
        ),
      ),
    );
  }
}
