import 'package:json_annotation/json_annotation.dart';
import 'package:online_exam_app/domain/entities/authentication/forgetPassword/forget_password_response.dart';

part 'forget_password_response_dto.g.dart';

@JsonSerializable()
class ForgetPasswordResponseDto {
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "info")
  final String? info;

  ForgetPasswordResponseDto ({
    this.message,
    this.info,
  });

  factory ForgetPasswordResponseDto.fromJson(Map<String, dynamic> json) {
    return _$ForgetPasswordResponseDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ForgetPasswordResponseDtoToJson(this);
  }

  ForgetPasswordResponse toDomain() => ForgetPasswordResponse(
    message: message,
    info: info
  );
}


