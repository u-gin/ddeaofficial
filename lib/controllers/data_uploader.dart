import 'package:get/get_state_manager/get_state_manager.dart';

class DataUploader extends GetxController {
  @override
  void onReady() {
    uploadData();
    super.onReady();
  }

  void uploadData() {
    print('Data is uploading');
  }
}
