library socket_io_client.dart;

import 'package:auctionvillage/utils/utils.dart';
import 'package:injectable/injectable.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

@injectable
class SocketIOClient {
  final io.Socket _socket;

  SocketIOClient._(this._socket);

  void close() => _socket.close();

  /// Connect to the server.
  SocketIOClient connect() {
    _socket.connect();
    return this;
  }

  /// Disconnect from the server.
  void disconnect() => _socket.disconnect();

  void dispose() => _socket.dispose();

  @factoryMethod
  static SocketIOClient intance() {
    final url = Uri.https(BuildEnvironment.domain(), '').toString().trim();

    final socket = io.io(
      url,
      io.OptionBuilder()
          .setTransports(['websocket'])
          .disableAutoConnect()
          .enableReconnection()
          .enableForceNew()
          .enableForceNewConnection()
          .build(),
    );

    return SocketIOClient._(socket);
  }

  /// Listen to an event from the server.
  ///
  /// This function binds the [handler] as a listener to the [event]
  void on(String event, {required void Function(Object?, SocketIOClient) handler}) {
    return _socket.on(event, (o) => handler(o, this));
  }

  SocketIOClient onConnect(void Function(Object?) onConnect) {
    // _socket.clearListeners();
    _socket.onConnect((o) => onConnect(o));
    return this;
  }

  SocketIOClient onDisconnect(void Function(Object?) onDisconnect) {
    _socket.onDisconnect((o) => onDisconnect(o));
    return this;
  }

  /// This function binds the [handler] as a listener to the first occurrence of the [event]. When [handler] is called once, it is removed.
  void once(String event, {required void Function(Object?, SocketIOClient) handler}) {
    return _socket.once(event, (o) => handler(o, this));
  }
}
