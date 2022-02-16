class Profile {
  final String name;
  final String surname;
  final String localization;
  final String image;
  int followers;
  int posts;
  int following;

  Profile({
    required this.name,
    required this.surname,
    required this.localization,
    required this.image,
    this.followers = 0,
    this.following = 0,
    this.posts = 0,
  });
}
