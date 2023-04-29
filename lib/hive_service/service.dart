// import 'package:hive/hive.dart';
// part 'models.g.dart';
//
// @HiveType(typeId: 0)
// class MainModel extends HiveObject {
//   @HiveField(0)
//   String studentID;
//
//   @HiveField(1)
//   String studentName;
//
//   MainModel({required this.studentID, required this.studentName});
// }
//
// @HiveType(typeId: 1)
// class CLOModel extends HiveObject {
//   @HiveField(0)
//   String cloDescription;
//
//   @HiveField(1)
//   Map<String, dynamic> knowledgeAndUnderstanding;
//
//   @HiveField(2)
//   Map<String, dynamic> skill;
//
//   @HiveField(3)
//   Map<String, dynamic> value;
//
//   CLOModel({
//     required this.cloDescription,
//     required this.knowledgeAndUnderstanding,
//     required this.skill,
//     required this.value,
//   });
// }
//
// @HiveType(typeId: 2)
// class QuizModel extends HiveObject {
//   @HiveField(0)
//   String q1;
//
//   @HiveField(1)
//   String q2;
//
//   @HiveField(2)
//   String q3;
//
//   @HiveField(3)
//   String q4;
//
//   @HiveField(4)
//   String q5;
//
//   QuizModel({
//     required this.q1,
//     required this.q2,
//     required this.q3,
//     required this.q4,
//     required this.q5,
//   });
// }
//
// @HiveType(typeId: 3)
// class AssignmentModel extends HiveObject {
//   @HiveField(0)
//   String q1;
//
//   @HiveField(1)
//   String q2;
//
//   @HiveField(2)
//   String q3;
//
//   @HiveField(3)
//   String q4;
//
//   @HiveField(4)
//   String q5;
//
//   AssignmentModel({
//     required this.q1,
//     required this.q2,
//     required this.q3,
//     required this.q4,
//     required this.q5,
//   });
// }
//
// @HiveType(typeId: 4)
// class MidTermModel extends HiveObject {
//   @HiveField(0)
//   String q1;
//
//   @HiveField(1)
//   String q2;
//
//   @HiveField(2)
//   String q3;
//
//   @HiveField(3)
//   String q4;
//
//   @HiveField(4)
//   String q5;
//
//   @HiveField(5)
//   String q6;
//
//   @HiveField(6)
//   String q7;
//
//   @HiveField(7)
//   String q8;
//
//   @HiveField(8)
//   String q9;
//
//   @HiveField(9)
//   String q10;
//
//   MidTermModel({
//     required this.q1,
//     required this.q2,
//     required this.q3,
//     required this.q4,
//     required this.q5,
//     required this.q6,
//     required this.q7,
//     required this.q8,
//     required this.q9,
//     required this.q10,
//   });
// }
//
// @HiveType(typeId: 5)
// class FinalExamModel extends HiveObject {
//   @HiveField(0)
//   String? q1;
//
//   @HiveField(1)
//   String? q2;
//
//   @HiveField(2)
//   String? q3;
//
//   @HiveField(3)
//   String? q4;
//
//   @HiveField(4)
//   String? q5;
//
//   @HiveField(5)
//   String? q6;
//
//   @HiveField(6)
//   String? q7;
//
//   @HiveField(7)
//   String? q8;
//
//   @HiveField(8)
//   String? q9;
//
//   @HiveField(9)
//   String? q10;
//
//   @HiveField(10)
//   String? q11;
//
//   @HiveField(11)
//   String? q12;
//
//   @HiveField(12)
//   String? q13;
//
//   @HiveField(13)
//   String? q14;
//
//   @HiveField(14)
//   String? q15;
//
//   //constractor code?
//
//   FinalExamModel({
//     required this.q1,
//     required this.q2,
//     required this.q3,
//     required this.q4,
//     required this.q5,
//     required this.q6,
//     required this.q7,
//     required this.q8,
//     required this.q9,
//     required this.q10,
//     required this.q11,
//     required this.q12,
//     required this.q13,
//     required this.q14,
//     required this.q15,
//   });
// }
//
// @HiveType(typeId: 6)
// class Mid_Lab_ExamModel extends HiveObject {
//   @HiveField(0)
//   String? q1;
//
//   @HiveField(1)
//   String? q2;
//
//   @HiveField(2)
//   String? q3;
//
//   @HiveField(3)
//   String? q4;
//
//   @HiveField(4)
//   String? q5;
//
//   @HiveField(5)
//   String? q6;
//
//   @HiveField(6)
//   String? q7;
//
//   Mid_Lab_ExamModel({
//     required this.q1,
//     required this.q2,
//     required this.q3,
//     required this.q4,
//     required this.q5,
//     required this.q6,
//     required this.q7,
//   });
// }
//
// @HiveType(typeId: 7)
// class CLOReportModel extends HiveObject {
//   @HiveField(0)
//   String? CLO_1;
//
//   @HiveField(1)
//   String? CLO_2;
//
//   @HiveField(2)
//   String? CLO_3;
//
//   @HiveField(3)
//   String? CLO_4;
//
//   @HiveField(4)
//   String? CLO_5;
//
//   @HiveField(5)
//   String? CLO_6;
//
//   @HiveField(6)
//   String? CLO_7;
//
//   @HiveField(7)
//   String? CLO_8;
//
//   @HiveField(8)
//   String? CLO_9;
//
//   @HiveField(9)
//   String? CLO_10;
//
//   CLOReportModel({
//     this.CLO_1,
//     this.CLO_2,
//     this.CLO_3,
//     this.CLO_4,
//     this.CLO_5,
//     this.CLO_6,
//     this.CLO_7,
//     this.CLO_8,
//     this.CLO_9,
//     this.CLO_10,
//   });
// }
//
//
// @HiveType(typeId: 8)
// class CLOSQuizModel extends HiveObject {
//   @HiveField(0)
//   CLOReportModel? cloReportModel;
//
//   @HiveField(1)
//   List<QuizModel>? quizModels;
//
//   CLOSQuizModel({
//     this.cloReportModel,
//     this.quizModels,
//   });
// }
//
// @HiveType(typeId: 9)
// class QuizzesResultModel extends HiveObject {
//   @HiveField(0)
//   late List<QuizModel> mainModel;
//
//   QuizzesResultModel(this.mainModel);
// }
//
//
//
//
