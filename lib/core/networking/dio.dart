// Importing the necessary packages
import 'package:dio/dio.dart'; // Dio is a powerful HTTP client for Dart

// Importing PrettyDioLogger for logging HTTP requests and responses in a readable format
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// Function to create and set up a Dio instance with PrettyDioLogger
Dio createAndSetupDio() {
  // Creating a new instance of Dio
  Dio dio = Dio();

  // Adding PrettyDioLogger interceptor for logging requests and responses
  dio.interceptors.add(PrettyDioLogger());

  // Adding PrettyDioLogger with specific options
  dio.interceptors.add(PrettyDioLogger(
    responseBody: true,    // Log response body
    error: true,           // Log errors
    requestHeader: true,  // Do not log request headers
    responseHeader: true, // Do not log response headers
    request: true,         // Log request details
    requestBody: true,     // Log request body
  ));

  // Returning the configured Dio instance
  return dio;
}
