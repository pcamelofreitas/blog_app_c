import 'package:blog_app/src/shared/presentation/form/form_utils.dart';
import 'package:blog_app/src/shared/presentation/form/validators.dart';

import '/src/shared/types/form_field.dart';
import '/src/shared/types/result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_form.freezed.dart';

@freezed
class SignInForm with _$SignInForm, FormUtils {
  const SignInForm._();
  const factory SignInForm({
    @Default(FormField<String>(name: 'email')) FormField<String> email,
    @Default(FormField<String>(name: 'password')) FormField<String> password,
  }) = _SignInForm;

  Result<String> get emailValidation => validateField(
        field: email.field,
        validators: Validators.email,
      );

  Result<String> get passwordValidation => validateField(
        field: password.field,
        validators: Validators.password,
      );

  Map<String, dynamic> toJson() => fieldsToJson([email, password]);
}
