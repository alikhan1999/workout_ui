import 'dart:io';

import 'package:dio/dio.dart';
import 'package:azz_medical_web/application/core/exception/exception.dart';
import 'package:azz_medical_web/application/network/external_values/ExternalValues.dart';
import 'package:azz_medical_web/common/logger/log.dart';
import 'package:azz_medical_web/data/models/tokens_model.dart';

import '../../application/network/error_handler/error_handler.dart';

class JwtRemoteAccessToken {
  JwtRemoteAccessToken({required this.externalValues});

  ExternalValues externalValues;

  Future<JwtTokensModel> getTokens(String? oldRefreshToken) async {
    try {
      final res = await Dio(BaseOptions(
              baseUrl: externalValues.getBaseUrlv1(),
              receiveDataWhenStatusError: true,
              headers: {HttpHeaders.contentTypeHeader: "application/json"},
              connectTimeout: 60 * 1000,
              receiveTimeout: 60 * 1000))
          .post('/auth/refresh-tokens', data: {'refreshToken': oldRefreshToken});
      return JwtTokensModel.fromJson(res.data);
    } on DioError catch (e) {
      d(e.response.toString());
      final exception = getException(e);
      throw exception;
    } catch (e) {
      throw ResponseException(msg: e.toString());
    }
  }
}
