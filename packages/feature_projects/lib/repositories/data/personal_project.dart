class PersonalProject {
  const PersonalProject({
    required this.title,
    required this.description,
    required this.dateStart,
    required this.dateEnd,
    required this.imageUrl,
  });

  final String title;
  final String description;
  final DateTime dateStart;
  final DateTime dateEnd;
  final String imageUrl;
}
