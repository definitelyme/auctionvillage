mixin DeliverableSocket {
  static String package(String id) => 'package.activity.$id'; // Private channel
  static String get packageEvent => '.package.status';

  static String order(String id) => 'order.status-update.$id'; // Public channel
  static String get orderEvent => '.order.status.update';
}

mixin PaymentSocket {
  static String package(String id) => DeliverableSocket.package(id);

  // Send Package Payment Confirmed Event & Channel
  static String get packagePaymentEvent => '.package.confirmed';

  static String order(String id) => 'order.$id';

  // Send Package Payment Confirmed Event & Channel
  static String get orderPaymentEvent => '.order.payment.confirmed';
}
