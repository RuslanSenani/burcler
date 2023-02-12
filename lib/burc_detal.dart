import 'package:burcler/models/burc.dart';
import 'package:flutter/material.dart';

class BurcDetal extends StatelessWidget {
  final Burc secilenBurc;
  const BurcDetal({super.key, required this.secilenBurc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: Colors.pink,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(secilenBurc.burcAdi + " Bürcü və Özəllikləri"),
              centerTitle: true,
              background: Image.asset(
                'images/' + secilenBurc.burcSekili,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Text(
                  secilenBurc.burcDetali,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
