import 'package:flutter/material.dart';

class ListTileView extends StatelessWidget {
  const ListTileView({super.key, required Icon leading, required Text title, required Text subtitle, required Wrap trailling});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: const Text('Title Here'),
       ),
      body:ListTile(
        leading: const Icon(Icons.ice_skating),
        title: const Text('Sachin Khatri'),
        subtitle: const Text('Tokha-8,Kathmandu'),
        trailing : Wrap(
          spacing: 8,
          children: [
            IconButton(onPressed:() {}, icon: const Icon(Icons.edit)),
            IconButton(onPressed:() {}, icon: const Icon(Icons.edit)),
          ],
        )
      ),
    );
  }
}
