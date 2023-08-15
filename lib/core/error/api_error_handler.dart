// import 'package:dio/dio.dart';
//
// import '../enums/enums.dart';
// import 'exceptions.dart';
//
// class ApiErrorHandler {
//   static void checkErrors(
//     Response response, {
//     String? message,
//   }) {
//     for (var httpError in HttpErrorType.values) {
//       if (response.statusCode == httpError.code) {
//         throw CustomException.httpException(httpError);
//       }
//     }
//
//     if (response.statusCode != null &&
//         (response.statusCode! < 200 ||
//             response.statusCode! > 299 ||
//             response.data == null)) {
//       throw CustomException.unKnownException(message ?? 'حدث خطأ ما');
//     }
//   }
// }
