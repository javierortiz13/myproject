import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseServices {
  //collection reference
  final String uid;
  DatabaseServices({required this.uid});
  final CollectionReference fanCollection =
      FirebaseFirestore.instance.collection('fans');

  Future updateUserData(String name, String lastname, String role) async {
    return await fanCollection.doc(uid).set({
      'name': name,
      'lastname': lastname,
      'role': role,
    });
  }
}
