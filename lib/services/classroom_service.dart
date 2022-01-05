import 'package:dio/dio.dart';
import 'package:learnable/constants.dart';
import 'package:learnable/models/api_response.dart';
import 'package:learnable/models/user.dart';
import 'package:learnable/services/user_service.dart';

Future<ApiResponse> getAttendees(String classroomId) async {
  ApiResponse apiResponse = ApiResponse();
  try {
    String token = getToken();
    var dio = Dio();
    var formData = FormData.fromMap({
      'id': classroomId,
    });
    dio.options.headers['Accept'] = 'application/json';
    dio.options.headers['Authorization'] = 'Bearer $token';
    final response = await dio.post('$classroomURL/attendees', data: formData);

    switch (response.statusCode) {
      case 200:
        List<User> attendees = [];
        Map<String, dynamic> json = response.data;
        List<dynamic> classAttendees = json['attendees'];
        for (var i = 0; i < classAttendees.length; ++i) {
          attendees.add(User(
              id: classAttendees[i]['id'],
              name: classAttendees[i]['name'],
              email: classAttendees[i]['email'],
              phone: classAttendees[i]['phone'] ?? '',
              gender: classAttendees[i]['gender'] ?? '',
              profileImage: classAttendees[i]['profile_image_file_path'] ?? '',
              role: classAttendees[i]['pivot']['role']));
        }
        apiResponse.data = attendees;
        break;
      case 401:
        apiResponse.error = unauthorized;
        break;
      default:
        apiResponse.error = somethingWentWrong;
        break;
    }
  } catch (e) {
    apiResponse.error = serverError;
  }
  return apiResponse;
}