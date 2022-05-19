import 'dart:io';

import 'package:blog_app/src/home/domain/models/post_model.dart';
import 'package:blog_app/src/home/domain/usecase/profile/profile_usecase.dart';
import 'package:blog_app/src/home/home_providers.dart';
import 'package:blog_app/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:blog_app/src/shared/presentation/widgets/capyba_social_circular_progress_indicator.dart';
import 'package:blog_app/src/shared/presentation/widgets/default_failed_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserPhotosScreen extends ConsumerStatefulWidget {
  const UserPhotosScreen({Key? key}) : super(key: key);

  @override
  _UserPhotosScreenState createState() => _UserPhotosScreenState();
}

class _UserPhotosScreenState extends ConsumerState<UserPhotosScreen> {
  @override
  Widget build(BuildContext context) {
    final ProfileState profileState =
        ref.watch(HomeProviders.profileUsecaseProvider);

    return profileState.userPostsRequestStatus.maybeMap(
      loading: (_) => const CapybaSocialCircularProgressIndicator(),
      succeeded: (value) {
        List<PostModel> _photos = value.data;

        return GridView.builder(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          itemCount: _photos.length,
          itemBuilder: (context, index) {
            return _PhotoItem(
              image: _photos[index].postPhoto.getOrElse(File('')),
            );
          },
        );
      },
      failed: (_) {
        return const DefaultFailedMessage(
          msg: 'Could not load your photos.',
        );
      },
      orElse: () => Container(),
    );
  }
}

class _PhotoItem extends StatelessWidget {
  final File _image;

  const _PhotoItem({
    Key? key,
    required File image,
  })  : _image = image,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          SpacingTokens.hecto,
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: Image.file(
        _image,
        fit: BoxFit.cover,
        errorBuilder: (context, object, stacktrace) {
          return const DefaultFailedMessage(
            msg: 'Could not load your image.',
          );
        },
      ),
    );
  }
}
