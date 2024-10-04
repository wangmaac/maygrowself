import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maygrowself/2.providers/app_status_provider.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appState = ref.watch(appStatusProvider);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [ElevatedButton(onPressed: () {
                ref.read(appStatusProvider.notifier).logout();
              }, child: Text('logout'))],
            ),
            Text('main page'),
            Text(appState.toString()),
          ],
        ),
      ),
    );
  }
}
