import "package:isar/isar.dart";
import "package:doon/internal/schema/schema_base.dart";

part "quiz_schema.g.dart";

@Collection()
class QuizSchema {
  Id? id = Isar.autoIncrement;

  late String rankId;

  late String rankName;

  late String stageId;

  late String stageName;

  late DateTime createdAt;

  final details = IsarLinks<QuizDetailSchema>();
}