import 'package:burcler/burc_detal.dart';
import 'package:burcler/models/burc.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc selectedBurc;
  const BurcItem({super.key, required this.selectedBurc});

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => BurcDetal(
                    secilenBurc: selectedBurc,
                  ),
                ),
              );
            },
            leading: CircleAvatar(
              radius: 25.0,
              backgroundImage: AssetImage("images/" + selectedBurc.burcSekili),
              backgroundColor: Colors.transparent,
            ),
            title: Text(
              selectedBurc.burcAdi,
              style: myTextStyle.headlineSmall,
            ),
            subtitle: Text(
              selectedBurc.burcTarixi,
              style: myTextStyle.titleSmall,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}
