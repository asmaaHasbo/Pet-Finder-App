// في ملف: lib/core/error/api_error_model/api_error_model.dart

class ApiErrorModel {
  final String? message;
  final dynamic errors;
  final Map<String, dynamic>? data;

  ApiErrorModel({this.message, this.errors, this.data});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) {
    return ApiErrorModel(
      message: json['message'] as String?,
      errors: json['errors'],
      data: json,
    );
  }

  String getAllErrorMessages() {
    final messages = <String>[];

    // Add main message if exists
    if (message != null && message!.isNotEmpty) {
      messages.add(message!);
    }

    // Handle errors field
    if (errors != null) {
      if (errors is String) {
        messages.add(errors as String);
      } else if (errors is List) {
        for (var error in errors) {
          messages.add(error.toString());
        }
      } else if (errors is Map) {
        final errorsMap = errors as Map<String, dynamic>;
        errorsMap.forEach((key, value) {
          if (value is List) {
            for (var error in value) {
              messages.add(error.toString());
            }
          } else {
            messages.add(value.toString());
          }
        });
      }
    }

    return messages.isEmpty ? 'An error occurred' : messages.join('\n');
  }
}
