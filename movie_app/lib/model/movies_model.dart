class Movies {
  late String posterPath;
  late int id;
  late String backdropPath;
  late int totalResults;
  late bool public;
  late String revenue;
  late int page;
  late List<Movie> listMovies;
  late ObjectIds objectIds;
  late String iso6391;
  late int totalPages;
  late String description;
  late CreatedBy createdBy;
  late String iso31661;
  late double averageRating;
  late int runtime;
  late String name;
  late Comments comments;

  Movies(
      {required this.posterPath,
      required this.id,
      required this.backdropPath,
      required this.totalResults,
      required this.public,
      required this.revenue,
      required this.page,
      required this.listMovies,
      required this.objectIds,
      required this.iso6391,
      required this.totalPages,
      required this.description,
      required this.createdBy,
      required this.iso31661,
      required this.averageRating,
      required this.runtime,
      required this.name,
      required this.comments});

  Movies.fromJson(Map<String, dynamic> json) {
    posterPath = json['poster_path'];
    id = json['id'];
    backdropPath = json['backdrop_path'];
    totalResults = json['total_results'];
    public = json['public'];
    revenue = json['revenue'];
    page = json['page'];
    if (json['results'] != null) {
      listMovies = [];
      json['results'].forEach((v) {
        listMovies.add(Movie.fromJson(v));
      });
    }
    objectIds = (json['object_ids'] != null
        ? ObjectIds.fromJson(json['object_ids'])
        : null)!;
    iso6391 = json['iso_639_1'];
    totalPages = json['total_pages'];
    description = json['description'];
    createdBy = (json['created_by'] != null
        ? CreatedBy.fromJson(json['created_by'])
        : null)!;
    iso31661 = json['iso_3166_1'];
    averageRating = json['average_rating'];
    runtime = json['runtime'];
    name = json['name'];
    comments = (json['comments'] != null
        ? Comments.fromJson(json['comments'])
        : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['poster_path'] = posterPath;
    data['id'] = id;
    data['backdrop_path'] = backdropPath;
    data['total_results'] = totalResults;
    data['public'] = public;
    data['revenue'] = revenue;
    data['page'] = page;
    data['results'] = listMovies.map((v) => v.toJson()).toList();
    data['object_ids'] = objectIds.toJson();
    data['iso_639_1'] = iso6391;
    data['total_pages'] = totalPages;
    data['description'] = description;
    data['created_by'] = createdBy.toJson();
    data['iso_3166_1'] = iso31661;
    data['average_rating'] = averageRating;
    data['runtime'] = runtime;
    data['name'] = name;
    data['comments'] = comments.toJson();
    return data;
  }
}

class Movie {
  late String posterPath;
  late bool adult;
  late String overview;
  late String releaseDate;
  late String originalTitle;
  late List<int> genreIds;
  late int id;
  late String mediaType;
  late String originalLanguage;
  late String title;
  late String backdropPath;
  late double popularity;
  late int voteCount;
  late bool video;
  late double voteAverage;

  Movie(
      {required this.posterPath,
      required this.adult,
      required this.overview,
      required this.releaseDate,
      required this.originalTitle,
      required this.genreIds,
      required this.id,
      required this.mediaType,
      required this.originalLanguage,
      required this.title,
      required this.backdropPath,
      required this.popularity,
      required this.voteCount,
      required this.video,
      required this.voteAverage});

  Movie.fromJson(Map<String, dynamic> json) {
    posterPath = json['poster_path'];
    adult = json['adult'];
    overview = json['overview'];
    releaseDate = json['release_date'];
    originalTitle = json['original_title'];
    genreIds = json['genre_ids'].cast<int>();
    id = json['id'];
    mediaType = json['media_type'];
    originalLanguage = json['original_language'];
    title = json['title'];
    backdropPath = json['backdrop_path'];
    popularity = json['popularity'];
    voteCount = json['vote_count'];
    video = json['video'];
    voteAverage = json['vote_average'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['poster_path'] = posterPath;
    data['adult'] = adult;
    data['overview'] = overview;
    data['release_date'] = releaseDate;
    data['original_title'] = originalTitle;
    data['genre_ids'] = genreIds;
    data['id'] = id;
    data['media_type'] = mediaType;
    data['original_language'] = originalLanguage;
    data['title'] = title;
    data['backdrop_path'] = backdropPath;
    data['popularity'] = popularity;
    data['vote_count'] = voteCount;
    data['video'] = video;
    data['vote_average'] = voteAverage;
    return data;
  }
}

class ObjectIds {
  late String movie100402;
  late String movie2080;
  late String movie76170;
  late String movie71676;
  late String movie1724;
  late String movie68721;
  late String movie49538;
  late String movie1930;
  late String movie10138;
  late String movie99861;
  late String movie1979;
  late String movie1726;
  late String movie118340;
  late String movie13056;
  late String movie76338;
  late String movie127585;
  late String movie102382;
  late String movie1771;
  late String movie10195;
  late String movie24428;

  ObjectIds(
      {required this.movie100402,
      required this.movie2080,
      required this.movie76170,
      required this.movie71676,
      required this.movie1724,
      required this.movie68721,
      required this.movie49538,
      required this.movie1930,
      required this.movie10138,
      required this.movie99861,
      required this.movie1979,
      required this.movie1726,
      required this.movie118340,
      required this.movie13056,
      required this.movie76338,
      required this.movie127585,
      required this.movie102382,
      required this.movie1771,
      required this.movie10195,
      required this.movie24428});

  ObjectIds.fromJson(Map<String, dynamic> json) {
    movie100402 = json['movie:100402'];
    movie2080 = json['movie:2080'];
    movie76170 = json['movie:76170'];
    movie71676 = json['movie:71676'];
    movie1724 = json['movie:1724'];
    movie68721 = json['movie:68721'];
    movie49538 = json['movie:49538'];
    movie1930 = json['movie:1930'];
    movie10138 = json['movie:10138'];
    movie99861 = json['movie:99861'];
    movie1979 = json['movie:1979'];
    movie1726 = json['movie:1726'];
    movie118340 = json['movie:118340'];
    movie13056 = json['movie:13056'];
    movie76338 = json['movie:76338'];
    movie127585 = json['movie:127585'];
    movie102382 = json['movie:102382'];
    movie1771 = json['movie:1771'];
    movie10195 = json['movie:10195'];
    movie24428 = json['movie:24428'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['movie:100402'] = movie100402;
    data['movie:2080'] = movie2080;
    data['movie:76170'] = movie76170;
    data['movie:71676'] = movie71676;
    data['movie:1724'] = movie1724;
    data['movie:68721'] = movie68721;
    data['movie:49538'] = movie49538;
    data['movie:1930'] = movie1930;
    data['movie:10138'] = movie10138;
    data['movie:99861'] = movie99861;
    data['movie:1979'] = movie1979;
    data['movie:1726'] = movie1726;
    data['movie:118340'] = movie118340;
    data['movie:13056'] = movie13056;
    data['movie:76338'] = movie76338;
    data['movie:127585'] = movie127585;
    data['movie:102382'] = movie102382;
    data['movie:1771'] = movie1771;
    data['movie:10195'] = movie10195;
    data['movie:24428'] = movie24428;
    return data;
  }
}

class CreatedBy {
  late String gravatarHash;
  late String name;
  late String username;

  CreatedBy(
      {required this.gravatarHash, required this.name, required this.username});

  CreatedBy.fromJson(Map<String, dynamic> json) {
    gravatarHash = json['gravatar_hash'];
    name = json['name'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['gravatar_hash'] = gravatarHash;
    data['name'] = name;
    data['username'] = username;
    return data;
  }
}

class Comments {
  dynamic movie100402;
  dynamic movie2080;
  dynamic movie76170;
  dynamic movie71676;
  dynamic movie1724;
  dynamic movie68721;
  dynamic movie49538;
  dynamic movie1930;
  dynamic movie10138;
  dynamic movie99861;
  dynamic movie1979;
  dynamic movie1726;
  dynamic movie118340;
  dynamic movie13056;
  dynamic movie76338;
  dynamic movie127585;
  dynamic movie102382;
  dynamic movie1771;
  dynamic movie10195;
  dynamic movie24428;

  Comments(
      {this.movie100402,
      this.movie2080,
      this.movie76170,
      this.movie71676,
      this.movie1724,
      this.movie68721,
      this.movie49538,
      this.movie1930,
      this.movie10138,
      this.movie99861,
      this.movie1979,
      this.movie1726,
      this.movie118340,
      this.movie13056,
      this.movie76338,
      this.movie127585,
      this.movie102382,
      this.movie1771,
      this.movie10195,
      this.movie24428});

  Comments.fromJson(Map<String, dynamic> json) {
    movie100402 = json['movie:100402'];
    movie2080 = json['movie:2080'];
    movie76170 = json['movie:76170'];
    movie71676 = json['movie:71676'];
    movie1724 = json['movie:1724'];
    movie68721 = json['movie:68721'];
    movie49538 = json['movie:49538'];
    movie1930 = json['movie:1930'];
    movie10138 = json['movie:10138'];
    movie99861 = json['movie:99861'];
    movie1979 = json['movie:1979'];
    movie1726 = json['movie:1726'];
    movie118340 = json['movie:118340'];
    movie13056 = json['movie:13056'];
    movie76338 = json['movie:76338'];
    movie127585 = json['movie:127585'];
    movie102382 = json['movie:102382'];
    movie1771 = json['movie:1771'];
    movie10195 = json['movie:10195'];
    movie24428 = json['movie:24428'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['movie:100402'] = movie100402;
    data['movie:2080'] = movie2080;
    data['movie:76170'] = movie76170;
    data['movie:71676'] = movie71676;
    data['movie:1724'] = movie1724;
    data['movie:68721'] = movie68721;
    data['movie:49538'] = movie49538;
    data['movie:1930'] = movie1930;
    data['movie:10138'] = movie10138;
    data['movie:99861'] = movie99861;
    data['movie:1979'] = movie1979;
    data['movie:1726'] = movie1726;
    data['movie:118340'] = movie118340;
    data['movie:13056'] = movie13056;
    data['movie:76338'] = movie76338;
    data['movie:127585'] = movie127585;
    data['movie:102382'] = movie102382;
    data['movie:1771'] = movie1771;
    data['movie:10195'] = movie10195;
    data['movie:24428'] = movie24428;
    return data;
  }
}
