import 'package:json_annotation/json_annotation.dart';

part 'number_fact_generator.g.dart';

@JsonSerializable()
class NumberFactGenerator {
  @JsonKey(name: 'text')
  String? text;
  @JsonKey(name: 'number')
  int? number;
  @JsonKey(name: 'found')
  bool? found;
  @JsonKey(name: 'type')
  String? type;

  NumberFactGenerator({
    this.text,
    this.number,
    this.found,
    this.type,
  });

  factory NumberFactGenerator.fromJson(Map<String, dynamic> json) {
    return _$NumberFactGeneratorFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NumberFactGeneratorToJson(this);
}
