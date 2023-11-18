//extension api
import 'package:isar/isar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart' show getApplicationSupportDirectory;
import 'package:doon/internal/schema/exports_schema.dart';

final isarProvider = FutureProvider(
  (ref) async {
    print("ISAR PROVIDER.....");
    
    return SchemaBase.openIsar();
  }
);

class SchemaBase {
  const SchemaBase._();
  static final List<CollectionSchema<dynamic>> schemas = [
    
  ];
  static const bool useInspector = true;

  static const bool isSyncWithViewHistories = false;

  static Future<Isar> openIsar() async {
    Isar? instance = Isar.getInstance();
    if(instance != null) {
      if (instance.isOpen) {
        return instance;
      }
    }

    final dir = await getApplicationSupportDirectory();
    Isar isar = await Isar.open(
      SchemaBase.schemas,
      directory: dir.path,
      inspector: SchemaBase.useInspector
    );

    print('SUCCESS: local_isar.dart');
    print('SUCCESS: openIsar()');
    print('SUCCESS: name/${Isar.getInstance()}');
    print('SUCCESS: hashcode/${Isar.getInstance().hashCode}');
    print('SUCCESS: success open process');

    return isar;
  }

  static int fastHash(String string) {
    var hash = 0xcbf29ce484222325;
    var i = 0;
    while(i < string.length) {
      final codeUnit = string.codeUnitAt(i++);
      hash ^= codeUnit >> 8;
      hash *= 0x100000001b3;
      hash ^= codeUnit & 0xFF;
      hash *= 0x100000001b3;
    }
    return hash;
  }
}
