import 'package:flutter_riverpod/flutter_riverpod.dart';

// autoDispose modifier: 사용하지 않는 Provider를 메모리에서 해제
final autoDisposeModifierProvider = FutureProvider.autoDispose<List<int>>((
  ref,
) async {
  await Future.delayed(const Duration(seconds: 2));

  return [1, 2, 3, 4, 5];
});
