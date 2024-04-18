import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app_ifab/config/config.dart';


final aleatoriumNomenProvider = StateProvider<String>((ref) {
  return AleatoriumGenerator.getAleatoriumNomen(); 
});
