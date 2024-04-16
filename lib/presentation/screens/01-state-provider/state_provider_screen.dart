import 'package:flutter/material.dart';

class StateProviderScreen extends StatelessWidget {

  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final titulusEstilus = Theme.of(context).textTheme.titleMedium;

    return Scaffold(
      appBar: AppBar(
        title: const Text('State Provider'),
        ),
      body: Center(
        child: Text('Sd', style: titulusEstilus,)
        ),
        floatingActionButton: FloatingActionButton( 
          child: const Icon (Icons.refresh_rounded),
          onPressed: () {},
        ) ,
    );
  }
}