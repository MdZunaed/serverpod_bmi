import 'dart:math';

import 'package:serverpod/serverpod.dart';
import 'package:testpod_server/src/generated/protocol.dart';

class TestEndpoint extends Endpoint {
  Future<BMIData> calculateBMI(
      Session session, double height, double weight) async {
    //height in cm
    //weight in kg

    double heightInMeter = height / 100;
    double bmi = weight / pow(heightInMeter, 2);
    String message = '';

    switch (bmi) {
      case <= 18.4:
        message = "Sutki";
        break;
      case >= 18.5 && < 25:
        message = "Thik Ase";
        break;
      case >= 25 && < 40:
        message = "Votka / Vutki";
        break;
      case >= 40:
        message = "Alur Bosta";
        break;
      default:
        message = "Not Found";
    }

    return BMIData(result: bmi, message: message);
  }
}
