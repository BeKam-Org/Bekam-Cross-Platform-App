import 'package:json_annotation/json_annotation.dart';

part 'error_model.g.dart';

/// Represents an error model used to convey information about a specific error.
///
/// Error models are commonly used to provide structured information about errors
/// that occur during API interactions or other parts of an application.
@JsonSerializable()
class ErrorModel {
  /// The field associated with the error, if applicable.
  String? field;

  /// The error message providing details about the issue.
  String? message;

  /// Creates an instance of [ErrorModel].
  ///
  /// Parameters:
  /// - [field]: The field associated with the error, if applicable.
  /// - [message]: The error message providing details about the issue.
  ErrorModel(this.field, this.message);

  /// Creates an instance of [ErrorModel] from a JSON map.
  factory ErrorModel.fromJson(Map<String, dynamic> json) => _$ErrorModelFromJson(json);

  /// Converts this [ErrorModel] instance to a JSON map.
  Map<String, dynamic> toJson() => _$ErrorModelToJson(this);
}
