import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderObserverContext context,
    Object? previousValue,
    Object? newValue,
  ) {
    log(
      '[Provider updated] provider ${context.provider} previousValue $previousValue newValue $newValue',
    );
  }

  @override
  void didAddProvider(ProviderObserverContext context, Object? value) {
    log('[Provider added] provider ${context.provider} value $value');
  }

  @override
  void didDisposeProvider(ProviderObserverContext context) {
    log('[Provider disposed] provider ${context.provider}');
  }
}
