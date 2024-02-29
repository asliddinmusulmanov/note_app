import 'package:dart_application_1/services/auth_servise.dart';

Future<void> login() async{
  AuthServise.box?.get("users");
}