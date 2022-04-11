import 'package:curso2/Models/episode_model.dart';
import 'package:flutter/material.dart';

import '../Screens/episodes.dart';

class ItemEpisode extends StatefulWidget {
  final EpisodesModel episodesModel;
  const ItemEpisode({Key? key, required this.episodesModel}) : super(key: key);

  @override
  State<ItemEpisode> createState() => _ItemEpisodeState();
}

class _ItemEpisodeState extends State<ItemEpisode> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      child: Stack(
        children: [
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.episodesModel.name,
                    style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0
                    ),
                  ),
                  Text(
                    widget.episodesModel.season.toString(),
                    style: TextStyle(
                        color: Colors.black45
                    ),
                  ),
                  Text(
                    widget.episodesModel.number.toString(),
                    style: TextStyle(
                        color: Colors.black45
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
