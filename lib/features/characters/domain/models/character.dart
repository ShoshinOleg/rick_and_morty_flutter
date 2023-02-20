class Character {
  final int id;
  final String? name;
  final String? status;
  final String? species;
  final String? type;
  final String? gender;
  final String? originName;
  final String? originUrl;
  final String? locationName;
  final String? locationUrl;
  final String? image;
  final List<String>? episode;
  final String? url;
  final String? created;

  Character({
    required this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
    this.originName,
    this.originUrl,
    this.locationName,
    this.locationUrl,
    this.image,
    this.episode,
    this.url,
    this.created,
  });
}