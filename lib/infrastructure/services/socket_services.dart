import 'dart:convert';
import 'dart:developer';

// import 'package:awesome_notifications/awesome_notifications.dart';
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
    socket.onConnect((data) {
      log('socket connected------------------------');
    });
    socket.onError((error) {
      log('socket Error: $error');
    });

    socketMsgReceiveListener(null);
    // testEventListener();
  }

  // static testEventListener() {
  //   socket.on('testEventResponse', (data) {
  //     print(
  //         "socket message event - testEventResponse Received * data : ${data}");
  //   });
  // }

  static socketMsgReceiveListener(Function? listenFunction) {
    socket.on('msg-recieve', (data) {
      log('socket message event received------------------------');
      log('socket message event received data : " $data');
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
      log("--------- print  after  showing notification -----------------------");
    });
  }

  static addUser({required String userId}) {
    socket.emit('add-user', userId);
  }

  static sendMsg({required SocketSendMsgRequestModel sendMsgRequest}) {
    socket.emit('send-msg', sendMsgRequest.toJson());
    log('socket message event sent------------------------');
    // testEvent();
  }

  // static testEvent() {
  //   socket.emit('testEventRequest', 'TestEventFrom Flutter');
  //   log('socket message event sent for test Event------------------------');
  // }

  static disconnectSocket() {
    socket.onDisconnect((data) {
      log('disconnected------------------------');
    });
  }
}
