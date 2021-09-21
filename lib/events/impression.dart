import 'package:mparticle_flutter_sdk/events/product.dart';

/// An Impression for use with a commerce event
///
/// An Impression assigns an [impressionListName] to a list of [products]
class Impression {
  Impression(this.impressionListName, this.products);

  final String impressionListName;
  final List<Product> products;

  static Impression fromJson(Map<String, dynamic> json) {
    return Impression(json['impressionListName'] as String,
        json['products'] as List<Product>);
  }

  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>> productsJSON = [];
    for (var product in this.products) {
      productsJSON.add(product.toJson());
    }
    return {
      'impressionListName': this.impressionListName,
      'products': productsJSON
    };
  }
}
