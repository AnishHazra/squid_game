import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GamesWidget extends StatelessWidget {
  final String textName;
  final String imageName;
  final VoidCallback? onTap;
  const GamesWidget({
    super.key,
    required this.imageName,
    required this.textName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 140,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xffff98c3),
              Color(0xfffe7795),
            ],
          ),
          borderRadius: BorderRadius.circular(40),
          border: Border.all(width: 0.5, color: Colors.white),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              textName,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
              ),
            ),
            Image.asset(
              imageName,
              fit: BoxFit.cover,
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
