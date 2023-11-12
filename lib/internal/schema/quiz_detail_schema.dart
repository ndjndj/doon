import "package:isar/isar.dart";
import "package:doon/internal/schema/schema_base.dart";

part "quiz_detail_schema.g.dart";

@Collection()
class QuizDetailSchema {
  Id? id = Isar.autoIncrement;

  late String stageId;

  late String quizId;
}