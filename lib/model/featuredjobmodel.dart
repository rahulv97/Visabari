class FeaturedJobModel {
  String? heading,
      companytitle,
      country,
      city,
      description,
      salmin,
      salmax,
      jobtype,
      qualification,
      deadline,
      id;
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
    this.jobtype,
    this.qualification,
    this.deadline,
    this.id,
  });
}

List<FeaturedJobModel> featuredjobContent = [];
