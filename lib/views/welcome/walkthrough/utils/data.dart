class AWalkThroughModel {
  String? heading;
  String? title;
  String? subtitle;
  String? image;
  double? progress;

  AWalkThroughModel({
    this.heading,
    this.title,
    this.subtitle,
    this.image,
    this.progress,
  });
}

final List<AWalkThroughModel> modal = [
  AWalkThroughModel(
    heading: 'NCDMB Logo Here',
    title: 'Advancement of the Nigerian Content across the oil and gas value chain',
    subtitle: '',
    image: 'assets/images/slide1.png',
    progress: 0.33,
  ),
  AWalkThroughModel(
    heading: 'Logo here',
    title: 'Restoring the Mandate for Development, Peace and Unity',
    subtitle: '',
    image: 'assets/images/slide2.png',
    progress: 0.66,
  ),
  AWalkThroughModel(
    heading: 'Logo here',
    title: 'Positioning the Nigerian Economy for Indigenous Participation',
    subtitle: '',
    image: 'assets/images/slide3.png',
    progress: 1,
  ),
];