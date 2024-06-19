class UnboardingContent {
  String image;
  String title;
  String description;
  UnboardingContent(
      {required this.description, required this.image, required this.title});
}

List<UnboardingContent> contents = [
  UnboardingContent(
      description: 'Pick the food Our menu\n   More then 35 times',
      image: "images/bread.jpg",
      title: 'Select from Our\n    Best Menu'),
  UnboardingContent(
      description:
          'You can Pay Cash On delivary and\n       card payment is available',
      image: "images/pizza.jpg",
      title: 'Easy and Online Payment'),
  UnboardingContent(
      description: 'Deliver your food at your\n             Doorstep',
      image: "images/noodles.jpg",
      title: 'Quick deliver At Your Doorstep')
];
