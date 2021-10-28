import 'package:simple_flutter_mvvm/api/api_service.dart';
import 'package:simple_flutter_mvvm/model/picsum_model.dart';

class ListPictureViewModel {
  List<PictureViewModel>? pictures;

  Future<void> fetchPictures() async {
    final apiResult = await ApiService().fetchPictureAPI();
    this.pictures = apiResult.map((e) => PictureViewModel(e)).toList();
  }
}

class PictureViewModel {
  final PicSumModel? picSumModel;
  PictureViewModel(this.picSumModel);
}
