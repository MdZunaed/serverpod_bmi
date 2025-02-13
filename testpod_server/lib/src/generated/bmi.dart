/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class BMIData
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  BMIData._({
    required this.result,
    required this.message,
  });

  factory BMIData({
    required double result,
    required String message,
  }) = _BMIDataImpl;

  factory BMIData.fromJson(Map<String, dynamic> jsonSerialization) {
    return BMIData(
      result: (jsonSerialization['result'] as num).toDouble(),
      message: jsonSerialization['message'] as String,
    );
  }

  double result;

  String message;

  BMIData copyWith({
    double? result,
    String? message,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'result': result,
      'message': message,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'result': result,
      'message': message,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _BMIDataImpl extends BMIData {
  _BMIDataImpl({
    required double result,
    required String message,
  }) : super._(
          result: result,
          message: message,
        );

  @override
  BMIData copyWith({
    double? result,
    String? message,
  }) {
    return BMIData(
      result: result ?? this.result,
      message: message ?? this.message,
    );
  }
}
