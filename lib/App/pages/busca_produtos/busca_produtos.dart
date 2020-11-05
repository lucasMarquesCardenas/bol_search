import 'package:flutter/material.dart';

class BuscaProdutos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, condition) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 300,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'images/busca.jpg',
                  fit: BoxFit.cover,
                ),
                centerTitle: true,
                title: Text('Consultar produtos'),
              ),
            ),
          ];
        },
        body: Stack(
          children: [],
        ),
      ),
    );
  }
}
