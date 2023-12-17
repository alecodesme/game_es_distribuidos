import 'package:flutter/material.dart';
import 'package:game_es/models/Game.dart';
import 'package:game_es/services/GameService.dart';

class GameProvider with ChangeNotifier {
  List<Game> _games = [
    Game(
        id: 1,
        name: "Miles Morales",
        pointsReward: 400,
        platforms: ['playstation', 'pc'],
        price: 5.00,
        cover: '',
        backgroundCover: '',
        stock: 2,
        description: 'Un juego de miles morales',
        multimediaVideos: [],
        discount: 0,
        reviews: []),
    Game(
        id: 1,
        name: "Spiderman",
        pointsReward: 400,
        platforms: ['playstation', 'pc'],
        price: 5.00,
        cover: '',
        backgroundCover: '',
        stock: 2,
        description: 'Un juego de spiderman',
        multimediaVideos: [],
        discount: 0,
        reviews: []),
    Game(
        id: 1,
        name: "Minecraft",
        pointsReward: 400,
        platforms: ['playstation', 'pc', 'xbox', 'nintendo'],
        price: 5.00,
        cover: '',
        backgroundCover: '',
        stock: 2,
        description: 'Un juego de bloques',
        multimediaVideos: [],
        discount: 10,
        reviews: [])
  ];

  final GameService _gameService = GameService();
  String _error = '';
  bool _isLoading = false;

  List<Game>? get games => _games;
  String get error => _error;
  bool get isLoading => _isLoading;

  Future<void> fetchGames() async {
    try {
      print('heyy');
      _isLoading = true;
      notifyListeners();

      GameResponse<List<Game>> response = await _gameService.getGames();

      _games = (response.success ? response.data : null)!;
      _error = response.success ? '' : response.message;
    } catch (error) {
      _error = 'Error fetching games: $error';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
