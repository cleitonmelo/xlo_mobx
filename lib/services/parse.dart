import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

class ParseService {
  String appId;
  String serverUrl;
  String clientKey;
  bool debug;

  ParseService(){
    Map<String, String> config = DotEnv().env;
    this.appId = config['appId'];
    this.serverUrl = config['serverUrl'];
    this.clientKey = config['clientKey'];
    this.debug = true;
  }

  Future<Parse> initialize() {
    return Parse().initialize(appId, serverUrl,
        clientKey: clientKey, autoSendSessionId: true, debug: debug);
  }

  Future<ParseResponse> create({@required String className, @required Map<String, dynamic> data}){
    final table = ParseObject(className);
    data.forEach((key, value) {
      table.set(key, value);
    });
    return table.save();
  }

  Future<ParseResponse> update({@required String objectId, @required String className, @required Map<String, dynamic> data}){
    final table = ParseObject(className);
    table.objectId = objectId;
    data.forEach((key, value) {
      table.set(key, value);
    });
    return table.save();
  }

  Future<ParseResponse> delete({@required String objectId, @required String className}){
    final table = ParseObject(className);
    table.objectId = objectId;
    return table.delete();
  }

  Future<ParseResponse> getObjectById({@required String objectId, @required String className}){
    final response = ParseObject(className).getObject(objectId);
    return response;
  }

  Future<ParseResponse> getAllObjects({@required String className}){
    final response = ParseObject(className).getAll();
    return response;
  }


}
