import 'package:curso2/HttpServices/http_services.dart';
import 'package:curso2/Items/item_movie.dart';
import 'package:curso2/Models/episode_model.dart';
import 'package:curso2/Models/movie_model.dart';
import 'package:flutter/material.dart';

class EpisodesFromSeries extends StatefulWidget {
  const EpisodesFromSeries({Key? key}) : super(key: key);

  @override
  State<EpisodesFromSeries> createState() => _EpisodesFromSeriesState();
}

class _EpisodesFromSeriesState extends State<EpisodesFromSeries> {
  List<EpisodesModel> episodesList = [];

  getMovies() async{
    episodesList = await HttpServices().getMovieInfo();
    setState(() {});
  }

  @override
  void initState() {
    getMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _list(),
    );
  }

  Widget _list(){
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView.builder(
        itemCount: episodesList.length, //150
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) => ItemMovie(episodesModel: episodesList[index]),
      ),
    );
  }
}
