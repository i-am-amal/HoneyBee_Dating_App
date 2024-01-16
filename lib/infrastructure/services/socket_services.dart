import 'dart:developer';
import 'dart:io';

import 'package:honeybee/domain/models/socket_send_msg_request_model/socket_send_msg_request_model/socket_send_msg_request_model.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketServices {
  static late IO.Socket socket;

  static socketSetup() {
    socket = IO.io(
        'http://10.0.2.2:5000',
        // "https://amal.fun",
        IO.OptionBuilder()
            .setTransports(['websocket'])
            .disableAutoConnect()
            .build());
    socket.connect();
    socket.onConnect((data) {
      log('socket connected------------------------');
    });
    socket.onError((error) {
      print('socket Error: $error');
    });
    socketMsgReceiveListener(null);
  }

  static socketMsgReceiveListener(Function? listenFunction) {
    socket.on('msg-recieve', (data) {
      log('socket message event received------------------------');
      // if (listenFunction != null) {
      //   listenFunction();
      // }
    });
  }

  static addUser({required String userId}) {
    socket.emit('add-user', userId);
  }

  static sendMsg({required SocketSendMsgRequestModel sendMsgRequest}) {
    socket.emit('send-msg', sendMsgRequest.toJson());
    log('socket message event sent------------------------');
  }

  static disconnectSocket() {
    socket.onDisconnect((data) {
      log('disconnected------------------------');
    });
  }
}
