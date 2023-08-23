import 'package:flutter/material.dart';

class LightPosProduct {
  List<Products>? products;

  LightPosProduct({this.products});

  LightPosProduct.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  int? id;
  String? name;
  List<String>? upcCodes;
  int? locationId;
  int? sort;

  Products({this.id, this.name, this.upcCodes, this.locationId, this.sort});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    upcCodes = json['upcCodes']?.cast<String>();
    locationId = json['locationId'];
    sort = json['sort'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['upcCodes'] = this.upcCodes;
    data['locationId'] = this.locationId;
    data['sort'] = this.sort;
    return data;
  }
}
