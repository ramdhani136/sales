import 'package:get/get.dart';
import 'package:sales/settings/config.dart';

import '../models/visits_model.dart';

class VisitsProvider extends GetConnect {
  Future<List<Visits>> getAllVisit() async {
    // final response = await get('${ConfigProject().uri}/visit');
    try {
      final response = await get('http://192.168.100.237:5000/visit');
      return Visits.fromJsonList(response.body);
    } catch (e) {
      return Visits.fromJsonList([]);
    }
  }

  //   Future<Visits?> getVisits(int id) async {
  //   final response = await get('visits/$id');
  //   return response.body;
  // }

  // Future<Response<Visits>> postVisits(Visits visits) async =>
  //     await post('visits', visits);
  // Future<Response> deleteVisits(int id) async => await delete('visits/$id');
}
