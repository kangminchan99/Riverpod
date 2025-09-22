import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'code_generation_provider.g.dart';

// 1) 어떤 Provider를 사용할지 결정할 고민 할 필요 없도록
// Provider, FutureProvider, StreamProvider 등
// StateNotifierProvider

final _testProvider = Provider<String>((ref) => 'Hello Code Generation');

@riverpod
String gState(Ref ref) {
  return 'Hello Code Generation';
}

@riverpod
Future<int> gStateFuture(Ref ref) async {
  await Future.delayed(const Duration(seconds: 2));

  return 42;
}

// keepAlive: true -> autoDispose 해제
@Riverpod(keepAlive: true)
Future<int> gStateFuture2(Ref ref) async {
  await Future.delayed(const Duration(seconds: 2));

  return 42;
}

// 2) parameter - family 파라미터를 일반 함수처럼 사용할 수 있도록
class Paramater {
  int number1;
  int number2;

  Paramater({required this.number1, required this.number2});
}

final _testFamilyProvider = Provider.family<int, Paramater>(
  (ref, param) => param.number1 * param.number2,
);

@riverpod
int gStateMultiply(Ref ref, {required int number1, required int number2}) {
  return number1 * number2;
}
