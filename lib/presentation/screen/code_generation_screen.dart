import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_ex/layout/default_layout.dart';
import 'package:riverpod_ex/riverpod/code_generation_provider.dart';

class CodeGenerationScreen extends ConsumerWidget {
  const CodeGenerationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state1 = ref.watch(gStateProvider);
    final state2 = ref.watch(gStateFutureProvider);
    final state3 = ref.watch(gStateFuture2Provider);
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
          ],
        ),
      ),
    );
  }
}
