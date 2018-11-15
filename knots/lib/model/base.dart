import 'package:json_annotation/json_annotation.dart';

part 'base.g.dart';

@JsonSerializable()
class Base{

  final int code;

  final String errorMsg;

  final  Object data;

  Base({this.code, this.errorMsg, this.data});

  factory Base.fromJson(Map<String, dynamic> json) => _$BaseFromJson(json);

  Map<String, dynamic> toJson() => _$BaseToJson(this);

}