import 'dart:io';

import 'package:student_objectbox/data_source/local_data_source/student_data_source.dart';
import 'package:student_objectbox/model/student.dart';

import '../data_source/remote_data_source/student_data_source.dart';

abstract class StudentRepository {
  Future<List<Student>> getStudents();
  Future<int> addStudent(File? file, Student student);
  Future<bool> loginStudent(String username, String password);
}

class StudentRepositoryImpl extends StudentRepository {
  @override
  Future<int> addStudent(File? file, Student student) async {
    return StudentRemoteDataSource().addStudent(file, student);
    }
  @override
  Future<List<Student>> getStudents() {
    return StudentDataSource().getStudents();
  }

  @override
  Future<bool> loginStudent(String username, String password) async {
    return StudentDataSource().loginStudent(username, password);
  }
}
