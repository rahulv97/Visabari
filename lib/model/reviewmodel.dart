class GiverReviewModel {
  String? name, time, star, description;
  String? image;

  GiverReviewModel({
    this.name,
    this.time,
    this.description,
    this.image,
    this.star,
  });
}

List<GiverReviewModel> reviewContent = [
  GiverReviewModel(
    name: 'Debra R. Estep',
    time: '1 day ago',
    star: '5',
    description:
        'It is a long established fact that a reader will be distracted by content of',
    image: 'assets/userimage.png',
  ),
  GiverReviewModel(
    name: 'Debra R. Estep',
    time: '1 day ago',
    star: '4',
    description:
        'It is a long established fact that a reader will be distracted by content of',
    image: 'assets/userimage2.png',
  ),
  GiverReviewModel(
    name: 'Debra R. Estep',
    time: '2 day ago',
    star: '5',
    description:
        'It is a long established fact that a reader will be distracted by content of',
    image: 'assets/userimage.png',
  ),
  GiverReviewModel(
    name: 'Debra R. Estep',
    time: '3 day ago',
    star: '5',
    description:
        'It is a long established fact that a reader will be distracted by content of',
    image: 'assets/userimage2.png',
  ),
  GiverReviewModel(
    name: 'Debra R. Estep',
    time: '4 day ago',
    star: '4',
    description:
        'It is a long established fact that a reader will be distracted by content of',
    image: 'assets/userimage.png',
  ),
  GiverReviewModel(
    name: 'Debra R. Estep',
    time: '5 day ago',
    star: '3',
    description:
        'It is a long established fact that a reader will be distracted by content of',
    image: 'assets/userimage2.png',
  ),
];
