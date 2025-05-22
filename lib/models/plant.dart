class Plant {
  final String id;
  final String name;
  final String scientificName;
  final String description;
  final String imageUrl;

  Plant({
    required this.id,
    required this.name,
    required this.scientificName,
    required this.description,
    required this.imageUrl,
  });

  factory Plant.fromJson(Map<String, dynamic> json) {
    return Plant(
      id: json['id'] as String,
      name: json['name'] as String,
      scientificName: json['scientificName'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'scientificName': scientificName,
      'description': description,
      'imageUrl': imageUrl,
    };
  }
} 