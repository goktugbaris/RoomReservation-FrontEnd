import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:room_reservation/models/Organization.dart';

import '../constants.dart';


class Organization_Api{
  static Future<List<dynamic>> getData(
      {required String target, String? limit}) async {
    try {
      var uri = Uri.https(
          BASE_URL,
          "api/$target",
          target == "organizations"
              ? {
            "offset": "0",
            "limit": limit,
          }
              : {});
      var response = await http.get(uri);
      var data = jsonDecode(response.body);
      List tempList = [];
      if (response.statusCode != 200) {
        throw data["message"];
      }
      for (var v in data) {
        tempList.add(v);
      }
      return tempList;
    } catch (error) {
      log("An error occured $error");
      throw error.toString();
    }
  }
  static Future<List<Organization>> getAllOrganizations(
      {required String limit}) async {
    List temp = await getData(
      target: "organizations",
      limit: limit,
    );
    return Organization.organizationsToList(temp);
  }
  static Future<Organization> getOrganizationById({required String id}) async {
    try {
      var uri = Uri.https(
        BASE_URL,
        "api/organizations/$id",
      );
      var response = await http.get(uri);
      var data = jsonDecode(response.body);
      if (response.statusCode != 200) {
        throw data["message"];
      }
      return Organization.fromJson(data);
    } catch (error) {
      log("an error occured while getting organization info $error");
      throw error.toString();
    }
  }
}