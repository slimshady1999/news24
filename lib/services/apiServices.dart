import "package:http/http.dart" as http;
import "dart:convert";
import "dart:async";

import '../model/globalBusinessModelClass.dart';
import '../model/businessModelClass.dart';
import '../model/cryptoModelClass.dart';
import '../model/techCrunchModelClass.dart';

// Business APIs Services //

class BusinessApiService {
  Future<List<Business>> getBusinessData() async {
    var response = await http.get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=6bb1adc209914dfda6f4a534dbe29f0a"));

    final data = jsonDecode(response.body);
    List<Business> _businessList = [];

    if (response.statusCode == 200) {
      // print(response.body);
      for (var item in data['articles']) {
        Business _businessData = Business.fromJson(item);
        _businessList.add(_businessData);
      }
      return _businessList;
    } else {
      return _businessList;
    }
  }
}

// Crypto APIs Services //

class CryptoCurrencyApiServices {
  Future<List<CryptoCurrencies>> getCryptoData() async {
    var response = await http.get(Uri.parse(
        "https://newsapi.org/v2/everything?q=bitcoin&from=2022-05-09&sortBy=publishedAt&apiKey=6bb1adc209914dfda6f4a534dbe29f0a"));

    final data = jsonDecode(response.body);
    List<CryptoCurrencies> _cryptoList = [];

    if (response.statusCode == 200) {
      // print(response.body);
      for (var item in data['articles']) {
        CryptoCurrencies _cryptData = CryptoCurrencies.fromJson(item);
        _cryptoList.add(_cryptData);
      }
      return _cryptoList;
    } else {
      return _cryptoList;
    }
  }
}

// Apple APIs Services //

class GlobalBusinessApiServices {
  Future<List<GlobalBusinessNews>> getGlobalNewsData() async {
    final response = await http.get(Uri.parse(
        "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=6bb1adc209914dfda6f4a534dbe29f0a"));

    final data = jsonDecode(response.body);
    List<GlobalBusinessNews> _globalBusinessDataList = [];
    if (response.statusCode == 200) {
      for (var item in data["articles"]) {
        GlobalBusinessNews _itemData = GlobalBusinessNews.fromJson(item);
        _globalBusinessDataList.add(_itemData);
        return _globalBusinessDataList;
      }
    }
    return _globalBusinessDataList;
  }
}

// Tech Crunch Apis Services //

class TechCrunchApiServices {
  Future<List<TechCrunch>> getTechCruncheData() async {
    final response = await http.get(Uri.parse(
        "https://newsapi.org/v2/everything?q=apple&from=2022-05-07&to=2022-05-04&sortBy=popularity&apiKey=6bb1adc209914dfda6f4a534dbe29f0a"));

    final data = jsonDecode(response.body);
    List<TechCrunch> _techCrunchDataList = [];
    if (response.statusCode == 200) {
      for (var item in data["articles"]) {
        TechCrunch _itemData = TechCrunch.fromJson(item);
        _techCrunchDataList.add(_itemData);
        return _techCrunchDataList;
      }
    }
    return _techCrunchDataList;
  }
}
