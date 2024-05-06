// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song_model_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SongModelAdapter extends TypeAdapter<SongModel> {
  @override
  final int typeId = 2;

  @override
  SongModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SongModel()
      ..id = fields[0] as String?
      ..songName = fields[1] as String?
      ..artistName = fields[2] as String?
      ..songUrl = fields[3] as String?
      ..imageUrl = fields[4] as String?
      ..isFavourite = fields[5] as bool?;
  }

  @override
  void write(BinaryWriter writer, SongModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.songName)
      ..writeByte(2)
      ..write(obj.artistName)
      ..writeByte(3)
      ..write(obj.songUrl)
      ..writeByte(4)
      ..write(obj.imageUrl)
      ..writeByte(5)
      ..write(obj.isFavourite);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SongModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
