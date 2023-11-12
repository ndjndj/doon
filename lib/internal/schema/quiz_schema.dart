import "package:isar/isar.dart";
import "package:doon/internal/schema/schema_base.dart";

part "quiz_schema.g.dart";

@Collection()
class QuizSchema {
  Id? id = Isar.autoIncrement;

  late String rank;

  final details = IsarLinks<QuizDetailSchema>();
}