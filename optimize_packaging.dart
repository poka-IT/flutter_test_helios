void main() {
  String articles = "163841689525773";
  final actualPackaging = actualRobotPackaging(articles);
  final optimizedPackaging = optimizePackaging(articles);

  print("Articles : $articles");
  print(
      "Robot actuel : ${actualPackaging.join('/')} => ${actualPackaging.length} cartons utilisés");
  print(
      "Robot optimisé : ${optimizedPackaging.join('/')} => ${optimizedPackaging.length} cartons utilisés");
}

List<String> actualRobotPackaging(String articles) {
  // Convert the string of articles to a list of integers
  final articleSizes = articles.split('').map(int.parse).toList();
  final List<String> packages = [];
  int currentSum = 0;
  String currentPackage = "";

  for (int size in articleSizes) {
    if ((currentSum + size) <= 10) {
      currentPackage += size.toString();
      currentSum += size;
    } else {
      packages.add(currentPackage);
      currentPackage = size.toString();
      currentSum = size;
    }
  }

  if (currentPackage.isNotEmpty) {
    packages.add(currentPackage);
  }

  return packages;
}

List<String> optimizePackaging(String articles) {
  // Convert the string of articles to a list of integers
  final articleSizes = articles.split('').map(int.parse).toList();
  final List<String> packages = [];

  while (articleSizes.isNotEmpty) {
    int capacity = 10;
    String currentPackage = "";

    for (int i = 0; i < articleSizes.length; i++) {
      int size = articleSizes[i];
      if (size <= capacity) {
        currentPackage += size.toString();
        capacity -= size;
        articleSizes.removeAt(i);
        i--;
      }
    }

    packages.add(currentPackage);
  }

  return packages;
}
