class AllCategoryModel {
  String? title, jobcount;
  String? image;

  AllCategoryModel({
    this.title,
    this.jobcount,
    this.image,
  });
}

List<AllCategoryModel> categoryContent = [
  AllCategoryModel(
    image: "assets/android.png",
    title: "DEVELOPER",
    jobcount: "600",
  ),
  AllCategoryModel(
    image: "assets/technology.png",
    title: "TECHNOLOGY",
    jobcount: "600",
  ),
  AllCategoryModel(
    image: "assets/accounting.png",
    title: "ACCOUNTING",
    jobcount: "600",
  ),
  AllCategoryModel(
    image: "assets/medical.png",
    title: "MEDICAL",
    jobcount: "600",
  ),
  AllCategoryModel(
    image: "assets/goverment.png",
    title: "GOVERMENT",
    jobcount: "600",
  ),
  AllCategoryModel(
    image: "assets/designing.png",
    title: "DESIGINING",
    jobcount: "600",
  ),
  AllCategoryModel(
    image: "assets/resturant.png",
    title: "RESTURANT",
    jobcount: "600",
  ),
  AllCategoryModel(
    image: "assets/news.png",
    title: "MEDIA & NEWS",
    jobcount: "600",
  ),
];
