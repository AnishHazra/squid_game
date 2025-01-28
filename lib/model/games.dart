// game_model.dart
class GameModel {
  final String title;
  final String duration;
  final String description;
  final int activePlayers;
  final String imagePath;
  final String detailImagePath;

  GameModel({
    required this.title,
    required this.duration,
    required this.description,
    required this.activePlayers,
    required this.imagePath,
    required this.detailImagePath,
  });
}

// games_data.dart
final List<GameModel> games = [
  GameModel(
    title: 'Red Light!\nGreen Light!',
    duration: '3 min',
    description:
        'Start with everyone along the starting line. When you say \'Green Light\' '
        'everyone will move towards the finish line. When you say \'Red Light\' everyone '
        'must immediately stop. If players are still moving when you call \'Red Light\', they '
        'are eliminated.',
    activePlayers: 234,
    imagePath: 'assets/images/doll.png',
    detailImagePath: 'assets/images/doll_background.jpg',
  ),
  GameModel(
    title: 'Gong-Gi',
    duration: '5 min',
    description:
        'Gong-gi: To win Gong-gi, a player must throw five die in the air in a row and catch them, in increasingly complicated stages. Then, once a player has passed all the stages, they must throw the five die in the air as a group and catch them all on the back of their hand to end the mini-game.',
    activePlayers: 189,
    imagePath: 'assets/images/jeux&jouets.png',
    detailImagePath: 'assets/images/gong-gi-background.jpeg',
  ),
  GameModel(
    title: 'Flying Stone',
    duration: '4 min',
    description:
        'A test of precision and strategy where players must throw stones to hit specific targets. '
        'Points are awarded based on accuracy and difficulty. Players must carefully consider wind '
        'direction and distance while making their throws.',
    activePlayers: 156,
    imagePath: 'assets/images/flying-stone.png',
    detailImagePath: 'assets/images/flying-stone-background.jpeg',
  ),
];
