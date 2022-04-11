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
    print(episodesList);
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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 10.0),
            // const Center(
            //   child: ListView.builder(
            //       padding: const EdgeInsets.all(8),
            //       itemCount: episodesList.length,
            //       itemBuilder: (BuildContext context, int index) {
            //         return Text( episodesList[index]);
            //       }
            //   ),
            // ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
            ),
          ],
        ),
      ),
    );
  }


}
