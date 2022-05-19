import 'package:blog_app/src/dependency_injectors.dart';
import 'package:blog_app/src/shared/data/repositories/api_repository.dart';
import 'package:blog_app/src/shared/data/repositories/user_repository.dart';
import 'package:dio/dio.dart';

void setupSharedDI() {
  di.registerFactory(
    () => Dio(
      BaseOptions(baseUrl: ''),
    ),
  );

  di.registerLazySingleton(
    () => ApiRepository(
      httpClient: di(),
    ),
  );

  di.registerFactory(
    () => UserRepository(
      firebaseFirestore: di(),
      firebaseStorage: di(),
      firebaseAuth: di(),
      postsRepository: di(),
    ),
  );
}
