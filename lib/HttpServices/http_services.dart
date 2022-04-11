import 'dart:convert';

import 'package:curso2/Utils/constants.dart';
import 'package:http/http.dart' as http;
import '../Models/episode_model.dart';
import '../Models/movie_model.dart';


class HttpServices{

  Future<List<MovieModel>> getMovieList() async{
    List<MovieModel> movieList = [];
    var url = Uri.parse(REFERENCE_BASE_URL + REFERENCE_SHOW_ALL);
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if(response.statusCode == 200){
      var data = json.decode(response.body);
      movieList = (data as List).map((i) => MovieModel.fromJson(i.cast<String, dynamic>())).toList();
    }

    return movieList;
  }

  Future<List<EpisodesModel>> getMovieInfo(String id) async{
    List<EpisodesModel> episodesList = [];
    var url = Uri.parse(REFERENCE_BASE_URL + REFERENCE_SHOW_ALL + "/" + id + REFERENCE_SHOW_EPISODES);
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if(response.statusCode == 200){
      var data = json.decode(response.body);
      episodesList = (data as List).map((i) => EpisodesModel.fromJson(i.cast<String, dynamic>())).toList();
    }

    return episodesList;
  }

}