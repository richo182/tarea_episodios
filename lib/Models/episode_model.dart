class EpisodesModel{

  int id;
  String name;
  int season;
  int number;

  EpisodesModel({
    required this.id,
    required this.name,
    required this.season,
    required this.number
  });

  factory EpisodesModel.fromJson(Map<String, dynamic> json) => EpisodesModel(
      id: json['id'],
      name: json['name'],
      season: json['season'],
      number: json['number']
  );

}