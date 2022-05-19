import 'package:blog_app/src/shared/presentation/form/form_utils.dart';

import '/src/shared/presentation/form/validators.dart';
import '/src/shared/types/form_field.dart';
import '/src/shared/types/maybe.dart';
import '/src/shared/types/result.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_posts_form.freezed.dart';

@freezed
class CreatePostForm with _$CreatePostForm, FormUtils {
  const CreatePostForm._();
  const factory CreatePostForm({
    @Default(FormField<String>(name: 'photo'))
        FormField<String> photo,
    @Default(FormField<String>(name: 'title'))
        FormField<String> title,
    @Default(FormField<String>(name: 'content'))
        FormField<String> content,
    @Default(FormField<String>(name: 'userId'))
        FormField<String> userId,
    @Default(FormField<bool>(
      name: 'isPublic',
      field: Just(false),
    ))
        FormField<bool> isPublic,
    @Default(FormField(name: 'createdAt'))
        FormField<Timestamp> createdAt,
  }) = _CreatePostForm;

  Result<String> get titleValidation => validateField(
        field: title.field,
        validators: Validators.required,
      );

  Map<String, dynamic> toJson() => fieldsToJson([
        title,
        content,
        isPublic,
        userId,
        createdAt,
      ]);
}
