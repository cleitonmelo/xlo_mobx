import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent,
      height: 95.0,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Icon(Icons.person, color: Colors.white, size: 35.0),
          const SizedBox(width: 20.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Acesse sua conta agora!",
                    style: GoogleFonts.lato(color: Colors.white, fontSize: 15)),
                Text("Clique aqui",
                    style: GoogleFonts.lato(color: Colors.white, fontSize: 12)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
