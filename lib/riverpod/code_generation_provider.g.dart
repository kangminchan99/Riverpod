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
