// ignore_for_file: prefer_final_fields

import 'package:flutter/cupertino.dart';
import 'package:wykmonke/models/fetch_coins_models.dart';
import 'package:dio/dio.dart';

class Repository {
  static String mainUrl = "https://pro-api.coinmarketcap.com/v1/";
  final String apiKey = "c7a45800-2c8c-4928-ad7a-b71598283fb3";
  var currencyListingAPI = '${mainUrl}cryptocurrency/listings/latest';
  Dio _dio = Dio();
  Future<BigDataModel> getCoins() async {
    try {
      _dio.options.headers["X-CMC_PRO_API_KEY"] = apiKey;
      Response response = await _dio.get(currencyListingAPI);
      return BigDataModel.fromJson((response.data));
    } catch (error, stacktrace) {
      debugPrint("Exception occured: $error stackTrace: $stacktrace");
      return BigDataModel.withError("error");
    }
  }
}