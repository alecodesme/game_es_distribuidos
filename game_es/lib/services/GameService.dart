import 'package:dio/dio.dart';
import 'package:game_es/api/api.dart';
import 'package:game_es/exceptions/common/EmptyListException.dart';
import 'package:game_es/exceptions/common/ServerException.dart';
import 'package:game_es/models/Game.dart';

class GameResponse<T> {
  final bool success;
  final String message;
  final T data;

  GameResponse(this.success, this.message, this.data);
}

class GameService {
  final Dio _dio = Dio();
  final Api _api = Api();

  Future<GameResponse<List<Game>>> getGames() async {
    try {
      final Response<Map<String, dynamic>> response =
          await _dio.get(_api.games);
      if (response.statusCode == 200) {
        List<Game> games = (response.data!['data'] as List)
            .map((game) => Game.fromJSONResponse(game))
            .toList();
        if (games.isEmpty) {
          throw EmptyListException("No games found");
        }
        return GameResponse(true, "Success", games);
      } else {
        throw ServerErrorException("Server error: ${response.statusCode}");
      }
    } catch (catchedException) {
      if (catchedException is EmptyListException) {
        return GameResponse(false, catchedException.message, []);
      } else if (catchedException is ServerErrorException) {
        return GameResponse(false, catchedException.message, []);
      } else {
        rethrow;
      }
    }
  }
}
