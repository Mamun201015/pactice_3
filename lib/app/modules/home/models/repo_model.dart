class RepoModel {
  String name;
  String url;
  String createdAt;
  String updateAt;
  String pushedAt;
  RepoModel(
      {required this.name,
      required this.createdAt,
      required this.pushedAt,
      required this.updateAt,
      required this.url});
}
