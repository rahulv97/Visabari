class NewJobModel {
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

  NewJobModel({
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

List<NewJobModel> jobContent = [];
