import 'package:flutter/material.dart';

class DomusScreen extends StatelessWidget {
  const DomusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: const Text('RiverApp'),
        centerTitle: true,
      ),
      body: _DomusScreenVisum(),
    );
  }
}


class _DomusScreenVisum extends StatelessWidget {
  const _DomusScreenVisum({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}