// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_fact_generator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NumberFactGenerator _$NumberFactGeneratorFromJson(Map<String, dynamic> json) =>
    NumberFactGenerator(
      text: json['text'] as String?,
      number: json['number'] as int?,
      found: json['found'] as bool?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$NumberFactGeneratorToJson(
        NumberFactGenerator instance) =>
    <String, dynamic>{
      'text': instance.text,
      'number': instance.number,
      'found': instance.found,
      'type': instance.type,
    };
