class OnboardingPageModel {
  final int id;
  final String title, subtitle;
  final String image;
  final int order;

  OnboardingPageModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.order,
  });

  factory OnboardingPageModel.fromJson(Map<String, dynamic> json) {
    return OnboardingPageModel(
      id: json['id'],
      title: json['title'],
      subtitle: json['subtitle'],
      image: json['picture'],
      order: json['order'],
    );
  }
}
