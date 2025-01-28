import 'package:flutter/material.dart';
import 'package:squid_game/pages/home_page.dart';

class SquidGameIntroPage extends StatefulWidget {
  const SquidGameIntroPage({super.key});

  @override
  State<SquidGameIntroPage> createState() => _SquidGameIntroPageState();
}

class _SquidGameIntroPageState extends State<SquidGameIntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //! logo
              Image.asset(
                "assets/images/logo.png",
                height: 100,
              ),
              //! person image
              Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 60,
                    top: 150,
                    child: Image.asset(
                      "assets/images/trangle.png",
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      "assets/images/gunman.png",
                      height: 400,
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: -10,
                    child: Image.asset(
                      "assets/images/trangle.png",
                      height: 100,
                    ),
                  ),
                  Positioned(
                    right: 50,
                    top: 250,
                    child: Image.asset(
                      "assets/images/rectangle.png",
                    ),
                  ),
                ],
              ),
              //! button
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color(0xfff65f7f),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 2),
                          color: Colors.black,
                          blurRadius: 10.0,
                        ),
                      ]),
                  child: const Text(
                    "Start",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
