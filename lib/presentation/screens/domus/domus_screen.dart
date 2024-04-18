import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DomusScreen extends StatelessWidget {
  const DomusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: const Text('RiverApp'),
        centerTitle: true,
      ),
      body: const _DomusScreenVisum(),
    );
  }
}


class _DomusScreenVisum extends StatelessWidget {
  const _DomusScreenVisum();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        _AdaptaListTile(
          titulus: 'State provider', 
          subtitulus: 'Un estado simple', 
          locus: '/state-provider'
          ),
          _AdaptaListTile(
          titulus: 'Future provider', 
          subtitulus: 'Un simple future + family', 
          locus: '/future-provider'
          ),
      ],
    );
  }
}

class _AdaptaListTile extends StatelessWidget {

  final String titulus;
  final String subtitulus;
  final String locus; 

  const _AdaptaListTile({
    required this.titulus,
    required this.subtitulus,
    required this.locus,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile( 
      title: Text( titulus ),
      subtitle: Text( subtitulus ),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () => context.push( locus ),
     );
  }
}