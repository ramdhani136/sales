import 'package:get/get.dart';
import 'package:sales/app/data/models/visits_model.dart';
import 'package:sales/app/data/providers/visits_provider.dart';

class VisitController extends GetxController {
  VisitsProvider visitProf = VisitsProvider();

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
    super.onClose();
  }
}
