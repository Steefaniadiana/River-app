import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app_ifab/presentation/providers/providers.dart';

class StreamScreen extends ConsumerWidget {
  const StreamScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final corpusMedium = Theme.of(context).textTheme.bodyMedium;

    final titleMedium = Theme.of(context).textTheme.titleMedium;


    final aleatoriumNomina$ = ref.watch( nominaStreamProvider );

    return Scaffold(
      appBar: AppBar( 
        title: const Text('Stream Provider'),
      ),
      body: aleatoriumNomina$.when( 
        data: (data) => Center(
          child: Text(data, style: titleMedium,)
        ),
        error:(error, stackTrace) => Text('Error: $error'),  
        loading: () => const Center(child: CircularProgressIndicator(),),
      ),
    );
  }
}

