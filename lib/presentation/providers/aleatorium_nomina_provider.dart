import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app_ifab/config/config.dart';


final nominaStreamProvider = StreamProvider<String> ((ref) async*  {
  
  await for (final nomen in AleatoriumGenerator.aleatoriumStream()) {
    yield nomen; 
  }

});





// final nominaStreamProvider = StreamProvider<List<String>> ((ref) async*  {
//   await Future.delayed(const Duration(seconds: 2));
//   yield [];
//   await Future.delayed(const Duration(seconds: 2));
//   yield ['Stefania'];
//   await Future.delayed(const Duration(seconds: 2));
//   yield ['Chencho', 'Diana'];
//   await Future.delayed(const Duration(seconds: 2));
//   yield ['Chencho', 'Diana', 'Lucia'];

// });






