
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app_ifab/config/config.dart';

final pokemonNomenProvider = FutureProvider.family< String, int >(( ref, id ) async {

  final nomen = await PokemonService.getPokemonNomen( id );

  return nomen ;
});

final pokemonIdProvider = StateProvider<int>((ref) {
  return 1 ;
});