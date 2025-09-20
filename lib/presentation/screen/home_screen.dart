import 'package:flutter/material.dart';
import 'package:riverpod_ex/layout/default_layout.dart';
import 'package:riverpod_ex/presentation/screen/family_modifier_screen.dart';
import 'package:riverpod_ex/presentation/screen/future_provider_screen.dart';
import 'package:riverpod_ex/presentation/screen/state_notifier_screen.dart';
import 'package:riverpod_ex/presentation/screen/state_provider_screen.dart';
import 'package:riverpod_ex/presentation/screen/stream_provider_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'Home',
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const StateProviderScreen()),
              );
            },
            child: const Text('StateProviderScreen'),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => StateNotifierProviderScreen(),
                ),
              );
            },
            child: const Text('StateNotifierProviderScreen'),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => FutureProviderScreen()),
              );
            },
            child: const Text('FutureProviderScreen'),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => StreamProviderScreen()),
              );
            },
            child: const Text('StreamProviderScreen'),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => FamilyModifierScreen()),
              );
            },
            child: const Text('FamilyModifierScreen'),
          ),
        ],
      ),
    );
  }
}
