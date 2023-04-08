import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/users_model.dart';

final userProvider = StreamProvider<List<UserModel>>((ref) {
  final userCollectionRef = FirebaseFirestore.instance.collection('users');

  return userCollectionRef.snapshots().map(
    (event) {
      var tempList = <UserModel>[];
      for (var element in event.docs) {
        tempList.add(UserModel.fromJson(element.data()));
      }
      return tempList;
    },
  );
});
