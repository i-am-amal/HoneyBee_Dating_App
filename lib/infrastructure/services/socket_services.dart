import 'dart:convert';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:honeybee/domain/models/socket_msg_receive_response_model/socket_msg_receive_response_model/socket_msg_receive_response_model.dart';
import 'package:honeybee/domain/models/socket_send_msg_request_model/socket_send_msg_request_model/socket_send_msg_request_model.dart';
import 'package:honeybee/infrastructure/services/notification_services.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

class SocketServices {
  static late io.Socket socket;
  static socketSetup() {
    socket = io.io(
        // 'http://10.0.2.2:5000',
        "https://amal.fun",
        io.OptionBuilder()
            .setTransports(['websocket'])
            .disableAutoConnect()
            .build());
    socket.connect();
    socket.onConnect((data) {});
    socket.onError((error) {});

    socketMsgReceiveListener(null);
  }

  static socketMsgReceiveListener(Function? listenFunction) {
    socket.on('msg-recieve', (data) {
      if (listenFunction != null) {
        listenFunction();
      }

      SocketMsgReceiveResponseModel socketMsg =
          SocketMsgReceiveResponseModel.fromJson(jsonDecode(data));

      NotificationService.showNotification(
        id: 1,
        title: 'You have a message',
        body: socketMsg.message ?? '',
        payload: {
          'type': 'message',
          'data': data as String,
        },
        category: NotificationCategory.Message,
      );
    });
  }

  static addUser({required String userId}) {
    socket.emit('add-user', userId);
  }

  static sendMsg({required SocketSendMsgRequestModel sendMsgRequest}) {
    socket.emit('send-msg', sendMsgRequest.toJson());
  }

  static disconnectSocket() {
    socket.onDisconnect((data) {});
  }
}
