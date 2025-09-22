import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_ex/presentation/screen/home_screen.dart';
import 'package:riverpod_ex/riverpod/provider_observer.dart';

void main() {
  runApp(
    ProviderScope(
      observers: [Logger()],
      child: MaterialApp(home: HomeScreen()),
    ),
  );
}
