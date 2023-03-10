import 'package:student_objectbox/model/batch.dart';
import 'package:student_objectbox/model/course.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'student.g.dart';

// flutter pub run build_runner build  --delete-conflicting-outputs

@Entity()
@JsonSerializable()
class Student {
  @Id(assignable: true)
  int stdId;

  @Unique()
  @Index()
  @JsonKey(name: '_id')
  String? studentId;
  String? fname;
  String? lname;
  String? image;
  String? username;
  String? password;

  final batch = ToOne<Batch>();
  final course = ToMany<Course>();

  Student({
    this.stdId = 0,
    this.studentId,
    this.fname,
    this.lname,
    this.image,
    this.username,
    this.password,
  });
   factory Student.fromJson(Map<String, dynamic> json)=>
    _$StudentFromJson(json);

    Map<String,dynamic> toJson()=>_$StudentToJson(this);
  }


