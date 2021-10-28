import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:simple_flutter_mvvm/model/picsum_model.dart';

class ApiService {
  Future<List<PicSumModel>> fetchPictureAPI() async {
    String url = 'https://picsum.photos/v2/list';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as List<dynamic>;
      final listResult = json.map((e) => PicSumModel.fromJson(e)).toList();
      return listResult;
    } else
      throw Exception('Error fetching pictures');
  }
}
