// ignore_for_file: non_constant_identifier_names, unnecessary_overrides, invalid_return_type_for_catch_error, body_might_complete_normally_nullable

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutty/models/users_model.dart';
import 'package:get/get.dart';

class FirebaseService extends GetxController {
  final userCollectionRef = FirebaseFirestore.instance.collection('users');

  // yeni  verileri veya olan verileri getirmek için  bu fonksiyon kullanılıyor

  List? listUsers;

  Future<UserModel?> getUsers() async {
    await userCollectionRef.get().then((querySnapshot) {
      final data = querySnapshot.docs;

      listUsers =
          data.map((datas) => UserModel.fromJson(datas.data())).toList();

      log(listUsers.toString());

      return listUsers;
    });
  }
}
