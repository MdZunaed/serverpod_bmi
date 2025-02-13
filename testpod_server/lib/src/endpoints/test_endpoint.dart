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
        message = "Votka / Vutki";
        break;  
    }

    BMIData bmiData = BMIData(result: bmi, message: message);

    return bmiData;
  }
}
