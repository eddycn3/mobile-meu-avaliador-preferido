/**
 * 
 * 
  @override
  Future<Either<AuthFailure, Avaliador>> getUserInfo({
    int id,
    String userToken,
  }) async {
    try {
      final userInfo = await Api.get(
        urlSufix: userInfoSufix + id.toString(),
        userToken: userToken,
      );
      // ignore: argument_type_not_assignable
      return right(Avaliador.fromJson(jsonDecode(userInfo)));
    } on ApiError catch (e) {
      switch (e.errorMsg) {
        case "ERROR_USER_INFO_NOT_FOUND":
          return left(const AuthFailure.userInfoNotFound());
          break;
        case "NO_TOKEN_PROVIDED":
          return left(const AuthFailure.noTokenProvided());
          break;
        case "TOKEN_ERROR":
          return left(const AuthFailure.tokenError());
          break;
        case "TOKEN_MALFORMED":
          return left(const AuthFailure.tokenMalformed());
          break;
        case "INVALID_TOKEN":
          return left(const AuthFailure.invalidToken());
          break;
        default:
          return left(const AuthFailure.serverError());
      }
    }
  }
 * 
 */
