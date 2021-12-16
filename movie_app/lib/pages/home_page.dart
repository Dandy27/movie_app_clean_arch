import 'package:flutter/material.dart';
import 'package:movie_app/controllers/movie_controllers.dart';
import 'package:movie_app/model/movies_model.dart';
import 'package:movie_app/repositories/movies_repository_imp.dart';
import 'package:movie_app/service/dio_servide_impl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final MovieControllers _controller =
      MovieControllers(MoviesRepositoryImp(DioServideImpl()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder<Movies?>(
            valueListenable: _controller.movies,
            builder: (_, movies, __) {
              return movies != null
                  ? ListView.builder(
                      itemCount: movies.listMovies.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Text(
                            movies.listMovies[index].title);
                      },
                    )
                  : Container();
            }));
  }
}
