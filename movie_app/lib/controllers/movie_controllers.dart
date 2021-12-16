import 'package:flutter/cupertino.dart';
import 'package:movie_app/model/movies_model.dart';
import 'package:movie_app/repositories/movies_repository.dart';

class MovieControllers {
  final MoviesRepository _moviesRepository;

  MovieControllers(this._moviesRepository) {
    fetch();
  }

  ValueNotifier<Movies? > movies = ValueNotifier<Movies?>(null);

  fetch() async {
    movies.value = await _moviesRepository.getMovies();
  }
}
