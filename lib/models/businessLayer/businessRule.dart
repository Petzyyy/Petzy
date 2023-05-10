
import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:pet_user_app/models/businessLayer/apiHelper.dart';

class BusinessRule {
  APIHelper dbHelper;

  BusinessRule(APIHelper _dbHelper) {
    dbHelper = _dbHelper;
  }

  
  Future<File> openCamera() async {
    try {
      // PermissionStatus permissionStatus = await Permission.camera.status;
      // if (permissionStatus.isLimited || permissionStatus.isDenied) {
      //   permissionStatus = await Permission.camera.request();
      // }
      //File imageFile;
      XFile _selectedImage = await ImagePicker().pickImage(
        source: ImageSource.camera,
        maxHeight: 1000,
        maxWidth: 1200,
      );
      File imageFile = File(_selectedImage.path);
      if (imageFile != null) {
        // File _byteData = await _cropImage(imageFile.path);
        // _byteData = await _imageCompress(_byteData, imageFile.path);

        print("_byteData path ${imageFile.path}");
        return imageFile;
      }
    } catch (e) {
      print("Exception - businessRule.dart - openCamera():" + e.toString());
    }
    return null;
  }
  Future<File> selectImageFromGallery() async {
    try {
      // PermissionStatus permissionStatus = await Permission.photos.status;
      // if (permissionStatus.isLimited || permissionStatus.isDenied) {
      //   permissionStatus = await Permission.photos.request();
      // }
      File imageFile;
      XFile _selectedImage = await ImagePicker().pickImage(
        source: ImageSource.gallery,
        maxHeight: 1000,
        maxWidth: 1200,
      );
      imageFile = File(_selectedImage.path);
      if (imageFile != null) {
        // File _byteData = await _cropImage(imageFile.path);
        // _byteData = await _imageCompress(_byteData, imageFile.path);
        return imageFile;
      }
    } catch (e) {
      print("Exception - businessRule.dart - selectImageFromGallery()" + e.toString());
    }
    return null;
  }
  
}
