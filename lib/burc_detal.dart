import 'package:burcler/models/burc.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetal extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetal({super.key, required this.secilenBurc});

  @override
  State<BurcDetal> createState() => _BurcDetalState();
}

class _BurcDetalState extends State<BurcDetal> {
  Color appbarRengi = Colors.transparent;
  late PaletteGenerator _generator;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      appBarRenginTap();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: appbarRengi,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                widget.secilenBurc.burcAdi + " Bürcü və Özəllikləri",
                style: TextStyle(fontSize: 18),
              ),
              centerTitle: true,
              background: Image.asset(
                'images/' + widget.secilenBurc.burcSekili,
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
                  widget.secilenBurc.burcDetali,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void appBarRenginTap() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage("images/${widget.secilenBurc.burcSekili}"));
    appbarRengi = _generator.mutedColor!.color;
    setState(() {});
  }
}
