class Car {
  final int id;
  final String title;
  final String link;

  Car({
    required this.id,
    required this.title,
    required this.link,
  });

  factory Car.fromJson(Map<String, dynamic> json) {
    return Car(
      id: json['id'],
      title: json['title'],
      link: json['link'],
    );
  }
}