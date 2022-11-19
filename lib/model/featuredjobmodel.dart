class FeaturedJobModel {
  String? heading, companytitle, country, city, description, salmin, salmax;
  String? image;

  FeaturedJobModel({
    this.heading,
    this.companytitle,
    this.country,
    this.city,
    this.description,
    this.image,
    this.salmin,
    this.salmax,
  });
}

List<FeaturedJobModel> featuredjobContent = [];
