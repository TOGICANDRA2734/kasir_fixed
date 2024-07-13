import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting.freezed.dart';
part 'setting.g.dart';

@freezed
sealed class Setting with _$Setting {
  @JsonSerializable(explicitToJson: true)
  factory Setting() = _Setting;

  @JsonSerializable(explicitToJson: true)
  factory Setting.entity(
      {String? shop,
      String? address,
      String? phone}) = SettingEntity;

  factory Setting.fromJson(Map<String, Object> json) =>
      _$SettingFromJson(json);
}
