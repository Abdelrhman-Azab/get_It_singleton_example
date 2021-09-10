import 'package:get_it/get_it.dart';
import 'package:get_it_example/app/services/get_meme.dart';

final locator = GetIt.instance;

setup() {
  locator.registerLazySingleton<GetMeme>(() => GetMeme());
}
