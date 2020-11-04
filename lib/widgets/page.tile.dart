import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageTile extends StatelessWidget {
  PageTile({this.label, this.iconData, this.onTap, this.highlighted});

  final String label;
  final IconData iconData;
  final VoidCallback onTap;
  final bool highlighted;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(label,
          style: TextStyle(
              color: highlighted ? Colors.deepPurpleAccent : Colors.black54,
              fontWeight: FontWeight.w700)),
      leading: Icon(iconData,
          color: highlighted ? Colors.deepPurpleAccent : Colors.black54),
      onTap: onTap,
    );
  }
}
