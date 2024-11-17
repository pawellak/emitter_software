enum Flavor { prod, dev }

abstract class AppConfig {
  abstract String baseUrl;
  abstract Flavor flavor;
}
