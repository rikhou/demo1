import 'dart:convert';

import 'package:http/http.dart';
import '../models/light_pos_product.dart';

class PosService {
  final String posUrl =
      "https://mock.apifox.cn/m1/3176358-0-default/getlightposproducts?id=1";

  Future<LightPosProduct> getLightPosProducts() async {
    var response = await get(Uri.parse(posUrl));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var d = LightPosProduct.fromJson(data);
      return d;
    } else {
      throw "Can't get data";
    }
  }
}
