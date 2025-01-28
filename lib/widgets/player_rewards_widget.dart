import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:squid_game/pages/piggy_bank_page.dart';

class PlayerRewardsWidget extends StatelessWidget {
  const PlayerRewardsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const PiggyBankPage(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(12),
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //! Currency icon and text
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //! Currency icon
                Image.asset(
                  "assets/images/coin.webp",
                  height: 100,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "439,235,911 Billion",
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                          shadows: [
                            const Shadow(
                              color: Colors.black,
                              offset: Offset(0, 0.2),
                              blurRadius: 1.0,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      //! Progress bar
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          height: 8,
                          width: 200,
                          child: Stack(
                            children: [
                              // Background progress bar
                              Container(
                                color: Colors.white.withOpacity(0.5),
                              ),
                              // Filled progress bar
                              FractionallySizedBox(
                                widthFactor: 0.6,
                                child: Container(
                                  color: const Color(0xff80d635),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
