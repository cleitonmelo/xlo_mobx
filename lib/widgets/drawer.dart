import 'package:flutter/material.dart';
import 'package:xlo_mobx/widgets/drawer.header.dart';
import 'package:xlo_mobx/widgets/page.section.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(50.0)),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.6,
          child: Drawer(
            child: ListView(
              children: [
                CustomDrawerHeader(),
                PageSection(),
              ],
            ),
          ),
        )
    );
  }
}
