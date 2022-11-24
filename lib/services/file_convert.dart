import 'dart:developer';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class FileConvert {
  static File? convertFileFromXFile(XFile xfilee){
    try {
      final File file=File(xfilee.path);
      return file;
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}