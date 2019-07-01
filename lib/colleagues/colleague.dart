class Colleague{
  final String name;
  final String title;
  final String birthdayDate;

  Colleague(this.name, this.title, this.birthdayDate);

  factory Colleague.fromJson(Map<String, dynamic> json){
    return Colleague(
      json["name"] as String,
      json["title"] as String,
      json["date"] as String);
  }
}