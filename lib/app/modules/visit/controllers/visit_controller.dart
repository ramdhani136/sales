import 'package:get/get.dart';
import 'package:sales/app/data/models/visits_model.dart';
import 'package:sales/app/data/providers/visits_provider.dart';
import 'package:flutter/material.dart';

class VisitController extends GetxController {
  VisitsProvider visitProf = VisitsProvider();

  TextEditingController searchC = TextEditingController();

  Future<List<Visits>> getAllVisit() async {
    return await visitProf.getAllVisit();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    searchC.dispose();
    super.onClose();
  }
}
