import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutty/services/firebase_service.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(userProvider);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          users.when(
            data: (data) => Column(
              children: data
                  .map((e) => ListTile(
                        title: Text(e.subtitle),
                        subtitle: Text(e.username),
                      ))
                  .toList(),
            ),
            error: (error, stackTrace) => Text('${error.toString()}'),
            loading: () => CircularProgressIndicator.adaptive(),
          )
        ],
      ),
    );
  }
}
