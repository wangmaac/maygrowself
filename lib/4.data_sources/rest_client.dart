import 'package:dio/dio.dart';
import 'package:maygrowself/5.models/email_dupl_model.dart';
import 'package:maygrowself/5.models/response_entity.dart';
import 'package:maygrowself/5.models/sign_up_request.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient{
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;
  
  @GET('/members/email/duplication')
  Future<ResponseEntity<EmailDuplicationModel>> getEmailDuplication(@Query('email') String email);

  @POST('/sign-up')
  Future<ResponseEntity> signUp(@Body() SignUpRequest body);
}