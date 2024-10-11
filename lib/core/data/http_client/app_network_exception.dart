import 'package:auctionvillage/core/data/index.dart';
import 'package:dio/dio.dart';

enum AppNetworkExceptionReason {
  cancelled,
  timedOut,
  responseError,
  socketException,
  noInternet;

  T when<T>({
    T Function()? cancelled,
    T Function()? timedOut,
    T Function()? responseError,
    T Function()? noInternet,
    T Function()? socketException,
    required T Function() orElse,
  }) {
    switch (this) {
      case AppNetworkExceptionReason.cancelled:
        return cancelled != null ? cancelled() : orElse();
      case AppNetworkExceptionReason.timedOut:
        return timedOut != null ? timedOut() : orElse();
      case AppNetworkExceptionReason.responseError:
        return responseError != null ? responseError() : orElse();
      case AppNetworkExceptionReason.noInternet:
        return noInternet != null ? noInternet() : orElse();
      case AppNetworkExceptionReason.socketException:
        return socketException != null ? socketException() : orElse();
    }
  }
}

class AppNetworkException<OriginalException extends Exception> extends AppHttpClientException<OriginalException> {
  /// Create a network exception.
  const AppNetworkException({
    required this.reason,
    OriginalException? exception,
  }) : super(exception: exception);

  /// The reason the network exception ocurred.
  final AppNetworkExceptionReason reason;

  AppHttpResponse asResponse() => AppHttpResponse(
        reason.when(
          cancelled: () => AnyResponse.error(messageTxt: 'Request was cancelled!', exception: exception),
          timedOut: () => AnyResponse.fromFailure(FailureResponse.timeout()),
          socketException: () => AnyResponse.error(messageTxt: '$exception', exception: exception),
          orElse: () => AnyResponse.error(messageTxt: 'Unknown server error!', exception: exception),
        ),
      );

  @override
  String toString() {
    if (exception is DioError) {
      return 'AppNetworkException<$OriginalException>(reason: $reason, exception: ${(exception as DioError).message})';
    }
    return 'AppNetworkException<$OriginalException>(reason: $reason, exception: ${exception.toString()})';
  }
}
