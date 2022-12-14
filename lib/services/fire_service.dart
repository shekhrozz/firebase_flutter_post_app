
import 'dart:developer';
import 'dart:io';


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_flutter_post_app/model/post_model.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FireService {

 static final _storage= FirebaseStorage.instance;
 static final _database=FirebaseFirestore.instance;

 static Future<bool?> createPost({required PostModel? post, required File? image,required String? imageName})async{
  bool? isCreated=false;

  try {
    final userRef=_storage.ref("postImage");
    final nameReferense=userRef.child(post!.id! + imageName!);

    UploadTask? uploadTask=  nameReferense.putFile(image!);
    await uploadTask;
    final imageUrl=await nameReferense.getDownloadURL();
    post=post.copyWith(imageUrl: imageUrl);
    await _database.collection('posts').doc(post.id).set(post.toJson());
    isCreated=true;

    return isCreated;


  } catch (e) {
    log(e.toString());
    return isCreated;
  }
 }

 static Future<bool?>deletePostById({required PostModel? postModel})async{
 bool? isDeleted=false;

 try {
   final deleteRef=_storage.refFromURL(postModel!.imageUrl!);

   await deleteRef.delete();
   await _database.collection('posts').doc(postModel.id).delete();
   isDeleted=true;    // tushunarsiz joylari mavjud
    } catch (e) {
   log(e.toString());
   return isDeleted;
 }
 }

 static FirebaseStorage get storage=>_storage;
 static FirebaseFirestore get database=>_database;
}