import 'package:maygrowself/2.providers/dio_/dio_provider.dart';
import 'package:maygrowself/4.data_sources/rest_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'rest_client_provider.g.dart';

@riverpod
RestClient restApi(RestApiRef ref) {

  final dio = ref.watch(getDioProvider);
  return RestClient(dio);
}
