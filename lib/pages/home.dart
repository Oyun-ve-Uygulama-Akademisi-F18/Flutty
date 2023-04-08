// ignore_for_file: body_might_complete_normally_nullable

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/users_model.dart';
import '../services/firebase_service.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

final FirebaseService firebaseController = Get.put(FirebaseService());

class _HomeState extends State<Home> {
  final userCollectionRef = FirebaseFirestore.instance.collection('users');

  List<UserModel>? listUsers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "home page",
          ),
          SizedBox(height: 20),
          Expanded(
            child: firebaseController.listUsers?.length == 0
                ? Text("data yok")
                : FutureBuilder(
                    future: getUsers(),
                    builder: (context, snapshot) {
                      final firebase = snapshot.data;
                      return ListView.builder(
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return Card(
                              margin: const EdgeInsets.all(10),
                              child: ListTile(
                                leading: const CircleAvatar(),
                                title: Text(firebase?.username ?? "username"),
                                subtitle:
                                    Text(firebase?.subtitle ?? "subtitle"),
                                trailing: const Icon(Icons.mic),
                              ),
                            );
                          });
                    },
                  ),
          )
        ],
      ),
    );
  }

  Future<UserModel?> getUsers() async {
    await userCollectionRef.get().then((querySnapshot) {
      final data = querySnapshot.docs;
      setState(() {
        listUsers =
            data.map((datas) => UserModel.fromJson(datas.data())).toList();

        log(listUsers.toString());
      });

      return listUsers;
    });
  }
}
