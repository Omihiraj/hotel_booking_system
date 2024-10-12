import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseServices {
  static getHotels() async {
    CollectionReference collectionReference =
        FirebaseFirestore.instance.collection('hotels');

    final hotels = await collectionReference.get();

    print("Hotel Data ::${hotels.docs[0]["title"]}");
  }
}
