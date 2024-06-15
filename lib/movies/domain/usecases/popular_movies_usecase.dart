

import 'package:task1/movies/domain/entities/now_playing_movies_entity.dart';

import '../repositories/base_movie_repository.dart';

class PopularMoviesUseCase {
  final BaseMoviesRepository baseMoviesRepository;
  PopularMoviesUseCase(this.baseMoviesRepository);

  Future<List<MoviesEntity>> execute() async {
    return await baseMoviesRepository.getPopularMovies();
  }
}
