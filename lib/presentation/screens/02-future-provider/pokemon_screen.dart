import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app_ifab/presentation/providers/pokemon_provider.dart';

class PokemonScreen extends ConsumerWidget {
  const PokemonScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final titulusEstilus = Theme.of(context).textTheme.titleMedium;

    final pokemonId = ref.watch(pokemonIdProvider);

    final pokemonAsync = ref.watch( pokemonNomenProvider);

    return Scaffold(
      appBar: AppBar( 
        title: Text('Pokemon: $pokemonId'),
        ),
      body: Center( 
        child: pokemonAsync.when(
          data:(data) => Text(data, style: titulusEstilus), 
          error:(error, stackTrace) => Text('Error: $error'), 
          loading: () => const CircularProgressIndicator(),
          ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 1,
            child: const Icon( Icons.plus_one ),
            onPressed: () {
              ref.read( pokemonIdProvider.notifier ).update(
                (state) => state + 1
              );
            },
          ),

          const SizedBox(height: 10,),

          FloatingActionButton(
            heroTag: 2,
            child: const Icon( Icons.exposure_minus_1_outlined ),
            onPressed: () {
              ref.read( pokemonIdProvider.notifier ).update(
                (state) => state > 1 ? state - 1 : (state) 
              );
            },
          )
        ],
      ),
      
    );
  }
}