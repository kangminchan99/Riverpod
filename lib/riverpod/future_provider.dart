import 'package:flutter_riverpod/flutter_riverpod.dart';

final multiplesFutureProvider = FutureProvider<List<int>>((ref) async {
  await Future.delayed(const Duration(seconds: 1));

  // throw Exception('Error occurred');

  return [1, 2, 3, 4, 5];
});
