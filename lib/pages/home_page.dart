import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:squid_game/model/games.dart';
import 'package:squid_game/pages/games_details_page.dart';
import 'package:squid_game/widgets/custom_animation.dart';
import 'package:squid_game/widgets/games_widget.dart';

import '../widgets/player_rewards_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //! Gradient background
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xfff175a7),
                  Color(0xffb23d57),
                ],
              ),
            ),
          ),
          Column(
            children: [
              //! AppBar
              AppBar(
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        "assets/images/human.png",
                      ),
                    ),
                  )
                ],
                backgroundColor: Colors.transparent,
                elevation: 0,
                automaticallyImplyLeading: false,
                scrolledUnderElevation: 0,
              ),
              //! Remaining content
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Player Rewards",
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          shadows: [
                            const Shadow(
                              color: Colors.black,
                              offset: Offset(0, 2),
                              blurRadius: 5.0,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      const PlayerRewardsWidget(),
                      const SizedBox(height: 10),
                      Text(
                        "Games",
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          shadows: [
                            const Shadow(
                              color: Colors.black,
                              offset: Offset(0, 2),
                              blurRadius: 5.0,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: ListView.builder(
                          padding: const EdgeInsets.all(0.0),
                          itemCount: games.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: GamesWidget(
                                textName: games[index].title,
                                imageName: games[index].imagePath,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    CustomPageRoute(
                                      child: GamesDetailsPage(
                                        game: games[index],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
