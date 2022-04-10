import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:login_page/utils/color_utils.dart';
class Activityscreen extends StatefulWidget {
  const Activityscreen({Key? key}) : super(key: key);

  @override
  _ActivityscreenState createState() => _ActivityscreenState();
}

class _ActivityscreenState extends State<Activityscreen> {
  List<Image> photos = [
   // Image.network(FireStorageService.loaddImage(context, image));
  ];
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //getPhotos();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        foregroundColor: Colors.black,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Activity",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(

        // decoration: BoxDecoration(
        //     gradient: LinearGradient(colors: [
        //       hexStringToColor("467199"),
        //       hexStringToColor("3E557F"),
        //       hexStringToColor("333462"),
        //
        //     ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Center(
          child: Column(
            children: <Widget>[
              //photos[0]
            ],
          ),
        ),

      ),
    );
  }

  // Future getPhotos() async {
  //   firebase_storage.FirebaseStorage storage = firebase_storage.FirebaseStorage.instance;
  //
  //   // for(int i=0;i<5;i++){
  //   //   var url =await storage.ref().child('baby/').getDownloadURL();
  //   // }
  //
  //   print("url:........................................................................");
  //   print(url);
  //   setState(() {});
  // }
}
class FireStorageService extends ChangeNotifier {
  FireStorageService();
  static Future<dynamic> loaddImage(BuildContext context,String image) async{
    return await FirebaseStorage.instance.ref().child('baby/').getDownloadURL();
  }
}