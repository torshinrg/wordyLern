import 'package:hive/hive.dart';

part 'word.g.dart';

@HiveType(typeId: 0)
class Word extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String word;

  @HiveField(2)
  final String translation;

  @HiveField(3)
  final String description;

  @HiveField(4)
  final DateTime created;

  @HiveField(5)
  final DateTime reviewTime;

  @HiveField(6)
  final int learned;

  Word({
    required this.id,
    required this.word,
    required this.translation,
    this.description = '',
    required this.created,
    required this.reviewTime,
    this.learned = 0,
  });
}
/*
class WordAdapter extends TypeAdapter<Word> {
  @override
  final int typeId = 0;

  @override
  Word read(BinaryReader reader) {
    return Word(
      id: reader.readString(),
      word: reader.readString(),
      translation: reader.readString(),
      description: reader.readString(),
      created: DateTime.parse(reader.readString()),
      reviewTime: DateTime.parse(reader.readString()),
      learned: reader.readInt(),
    );
  }

  @override
  void write(BinaryWriter writer, Word obj) {
    writer.writeString(obj.id);
    writer.writeString(obj.word);
    writer.writeString(obj.translation);
    writer.writeString(obj.description);
    writer.writeString(obj.created.toIso8601String());
    writer.writeString(obj.reviewTime.toIso8601String());
    writer.writeInt(obj.learned);
  }
}
*/
