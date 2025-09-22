// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_generation_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(gState)
const gStateProvider = GStateProvider._();

final class GStateProvider extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  const GStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gStateHash();

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    return gState(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$gStateHash() => r'f0d87d8b9d9036d447bca45326976bc4f227c53b';

@ProviderFor(gStateFuture)
const gStateFutureProvider = GStateFutureProvider._();

final class GStateFutureProvider
    extends $FunctionalProvider<AsyncValue<int>, int, FutureOr<int>>
    with $FutureModifier<int>, $FutureProvider<int> {
  const GStateFutureProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gStateFutureProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gStateFutureHash();

  @$internal
  @override
  $FutureProviderElement<int> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<int> create(Ref ref) {
    return gStateFuture(ref);
  }
}

String _$gStateFutureHash() => r'296aaf06d01154de00ecc50232ff7408403723ce';

@ProviderFor(gStateFuture2)
const gStateFuture2Provider = GStateFuture2Provider._();

final class GStateFuture2Provider
    extends $FunctionalProvider<AsyncValue<int>, int, FutureOr<int>>
    with $FutureModifier<int>, $FutureProvider<int> {
  const GStateFuture2Provider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gStateFuture2Provider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gStateFuture2Hash();

  @$internal
  @override
  $FutureProviderElement<int> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<int> create(Ref ref) {
    return gStateFuture2(ref);
  }
}

String _$gStateFuture2Hash() => r'6d786638ab0cc45e74848024ef51aa34aa371af9';

@ProviderFor(gStateMultiply)
const gStateMultiplyProvider = GStateMultiplyFamily._();

final class GStateMultiplyProvider extends $FunctionalProvider<int, int, int>
    with $Provider<int> {
  const GStateMultiplyProvider._({
    required GStateMultiplyFamily super.from,
    required ({int number1, int number2}) super.argument,
  }) : super(
         retry: null,
         name: r'gStateMultiplyProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$gStateMultiplyHash();

  @override
  String toString() {
    return r'gStateMultiplyProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $ProviderElement<int> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  int create(Ref ref) {
    final argument = this.argument as ({int number1, int number2});
    return gStateMultiply(
      ref,
      number1: argument.number1,
      number2: argument.number2,
    );
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GStateMultiplyProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$gStateMultiplyHash() => r'f77f9f34d824e82243aaedac6b05d455233b3bfb';

final class GStateMultiplyFamily extends $Family
    with $FunctionalFamilyOverride<int, ({int number1, int number2})> {
  const GStateMultiplyFamily._()
    : super(
        retry: null,
        name: r'gStateMultiplyProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GStateMultiplyProvider call({required int number1, required int number2}) =>
      GStateMultiplyProvider._(
        argument: (number1: number1, number2: number2),
        from: this,
      );

  @override
  String toString() => r'gStateMultiplyProvider';
}
