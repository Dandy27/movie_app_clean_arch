import 'package:dio/dio.dart';
import 'package:movie_app/service/dio_service.dart';

class DioServideImpl implements DioService {
  @override
  Dio getDio() {
    return Dio(BaseOptions(baseUrl: 'http://www.themoviedb.org/', headers: {
      'content-type': 'application/json;charset=utf-8',
      'authorization':
          'Bearer <<eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkNGIyMWI3ODAwMmNkM2FkMTkzNTJjOTVlZDgzZDg3NyIsInN1YiI6IjYxYjk0MTE5MjIzZTIwMDA5MDBiODE0ZSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.AvgJGcVez0vLRbmzJjGR-Ki_s8alRYkD7OO7ITv1n3c>>'
    }));
  }
}
 
