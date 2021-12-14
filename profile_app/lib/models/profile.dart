/*
  So the right way would be declare fields for followers and son on,
  but I'm a bit tired now, so I'm going to use a dicitonary
*/

class Profile {
  final String name;
  final String city;
  final String image;
  final Map<String, String> numbers;

  const Profile({
    required this.name,
    required this.city,
    required this.image,
    required this.numbers,
  });
}
