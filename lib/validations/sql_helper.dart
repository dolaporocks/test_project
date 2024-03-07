import 'package:cloud_firestore/cloud_firestore.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _mainCollection = _firestore.collection('testClub');

class Database {
  static String? user_id;

  // static Future<void> addUser({
  //   required String 
  // })async{

  // };

}
