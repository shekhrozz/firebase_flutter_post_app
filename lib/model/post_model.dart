class PostModel {
  String? id;
  String? title;
  String? username;
  String? imageUrl;
  String? publishedDate;

  PostModel({required this.id,required this.title,required this.username, this.imageUrl,required this.publishedDate});

 factory PostModel.fromJson(Map<String,dynamic>json)=>PostModel(
  id:json['id'],
   title:json['title'],
    username:json['username'],
     imageUrl: json['imageUrl'], 
     publishedDate: json['publishedDate']);


     Map<String,dynamic>toJson()=>{
     'id':id,
     'title':title,
     'username':username,
     'imageUrl':imageUrl,
     'publishedDate':publishedDate

     };


     PostModel copyWith({String? id,String? imageUrl,String?username,String?title,String?publishedDate})=>
     PostModel(id: id?? this.id,
      title: title?? this.id,
       username: username?? this.username,
        imageUrl: imageUrl?? this.imageUrl,
         publishedDate: publishedDate?? this.publishedDate);


}