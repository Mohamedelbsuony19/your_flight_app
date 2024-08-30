class AppConfig {
  final String appName;
  final String? flavorName;
  final String? graphQLBaseUrl;
  final String? assetsBaseUrl;
  final String restBaseUrl;

  AppConfig({
    required this.appName,
     this.flavorName,
     this.graphQLBaseUrl,
     this.assetsBaseUrl,
    required this.restBaseUrl,
  });
}
