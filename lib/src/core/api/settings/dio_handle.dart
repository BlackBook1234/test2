// ignore_for_file: deprecated_member_use

import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';

import '../components/api_error.dart';

typedef HttpLibraryMethod<T> = Future<Response<T>> Function();

Future<dynamic> mapException(
    HttpLibraryMethod<Map<String, dynamic>> method) async {
  try {
    return await method().then((value) => value.data!);
  } on DioError catch (exception) {
    switch (exception.type) {
      case DioErrorType.cancel:
        throw APIError('Connection cancelled', 'CANCELLED');
      case DioErrorType.connectionTimeout:
        throw APIError('Connection time out', 'CONNECT_TIME_OUT');
      case DioErrorType.receiveTimeout:
        throw APIError('Receive time out', 'RECEIVE_TIME_OUT');
      case DioErrorType.sendTimeout:
        throw APIError('Send time out', 'SEND_TIME_OUT');
      case DioErrorType.badResponse:
        // For DioErrorType.response, we are guaranteed to have a
        // response object present on the exception.
        final response = exception.response;
        if (response == null) {
          // This should never happen, judging by the current source code
          // for Dio.
          throw APIError('Unexpected dio error', 'UNEXPECTED');
        }

        if (response.data is Map<String, dynamic>) {
          final data = response.data;
          if (data["status"] == "error") {
            return throw APIError(data["message"], data["status"]);
          } else {
            throw APIError("Серверийн алдаа", data['status']);
          }
        } else {
          throw APIError(
            'Алдаа ${response.statusCode}',
            '${response.statusMessage}',
          );
        }

      case DioErrorType.connectionError:
        if (exception.error is SocketException) {
          ConnectivityResult connectivityResult;
          try {
            connectivityResult = (await (Connectivity().checkConnectivity()))
                as ConnectivityResult; //TODO
          } catch (e) {
            connectivityResult = ConnectivityResult.none;
          }

          if (connectivityResult != ConnectivityResult.wifi &&
              connectivityResult != ConnectivityResult.mobile) {
            throw APIError('Интернэт холболтоо шалгана уу.', 'Холболт');
          } else {
            bool hasConnection = false;
            try {
              final result = await InternetAddress.lookup('google.com');
              if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
                hasConnection = true;
              } else {
                hasConnection = false;
              }
            } on SocketException catch (_) {
              hasConnection = false;
            }

            if (hasConnection) {
              throw APIError('Сервер унасан байна.', 'Сервер');
            } else {
              throw APIError('Интернэт холболтоо шалгана уу.', 'Холболт');
            }
          }
        }
        break;
      default:
        throw APIError(".toString()", exception.runtimeType.toString());
    }
  } catch (e) {
    throw APIError('Бусад алдаа', e.toString());
  }
}
