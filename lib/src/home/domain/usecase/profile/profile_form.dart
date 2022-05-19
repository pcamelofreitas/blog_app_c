import '/src/shared/presentation/form/form_utils.dart';
import '/src/shared/presentation/form/validators.dart';
import '/src/shared/types/form_field.dart';
import '/src/shared/types/result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_form.freezed.dart';

@freezed
class EditProfileForm with _$EditProfileForm, FormUtils {
  const EditProfileForm._();
  const factory EditProfileForm({
    @Default(FormField<String>(name: 'name')) FormField<String> name,
    @Default(FormField<String>(name: 'email')) FormField<String> email,
    @Default(FormField<String>(name: 'bio')) FormField<String> bio,
    @Default(FormField<String>(name: 'selfie')) FormField<String> selfie,
  }) = _EditProfileForm;

  Result<String> get nameValidation => validateField(
        field: name.field,
        validators: Validators.required,
      );

  Map<String, dynamic> toJson() => fieldsToJson([
        name,
        bio,
      ]);
}
