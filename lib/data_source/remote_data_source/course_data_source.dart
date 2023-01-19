import 'package:student_objectbox/app/constants.dart';
import 'package:student_objectbox/data_source/remote_data_source/response/course_response.dart';
import 'package:student_objectbox/helper/http_service.dart';
import 'package:student_objectbox/model/course.dart';
import 'package:dio/dio.dart';

class CourseRemoteDataSource {
  final Dio _httpServices = HttpServices().getDioInstance();

  Future<List<Course>> getAllCourse() async {
    try {
      Response response = await _httpServices.get(
        Constant.courseURL,
      );
      if (response.statusCode == 200) {
        CourseResponse courseResponse = CourseResponse.fromJson(response.data);
        return courseResponse.data!;
      } else {
        return [];
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
