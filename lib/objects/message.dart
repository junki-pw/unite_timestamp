import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unite_timestamp/objects/union_timestamp.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  const factory Message({
    @Default('') String messageId,
    @Default('') String senderId,
    @Default('') String content,
    @alwaysUseServerTimestampUnionTimestampConverter
    @Default(UnionTimestamp.serverTimestamp())
        UnionTimestamp createdAt,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
