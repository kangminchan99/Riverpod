import 'package:flutter_riverpod/flutter_riverpod.dart';

final familyModifierProvider = FutureProvider.family<List<int>, int>((
  ref,
  param,
) async {
  await Future.delayed(const Duration(seconds: 1));

  return List.generate(5, (index) => index * param);
});
