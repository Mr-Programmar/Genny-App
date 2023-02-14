import 'dart:convert';

import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../Model/model_offers.dart';
import 'package:http/http.dart' as http;

class OffersController extends GetxController {
  late Offers OfferInstance;
  var OffersData;
  List OfferSave=[];

  getOffersFromApi() async {
    final responce = await http.get(
      Uri.parse('https://newgenny.eavenir.com/api/items'),
    );

    // print(responce.body);
    OffersData = jsonDecode(responce.body);

    OfferSave=OffersData["Data"];
    print("Offer___api___hit");

    print(OfferSave.length);
    print(OfferSave[6]["TradeOffer"].toString());
    // print(OfferSave.length);

    // print("+++++++++++++++++++++${OffersData["Data"][0]["ItemName"]}");
    // Offers(ItemName: OffersData["Data"]["ItemNamae"].toString());

//     for (int i=0; i<OfferSave.length; i++)
// {
//
//
// Offers(ItemName:OffersData["Data"][i]["ItemNamae"].toString(),Company: OffersData["Data"][i]["Company"].toString(),Distributor: OffersData["Data"][i]["Distributor"].toString(),offerId: OffersData["Data"][i]["id"].toString(),PartyType: OffersData["Data"][i]["PartyType"].toString(),Scheme: OffersData["Data"][i]["Scheme"].toString(),TradeOffer: OffersData["Data"][i]["TradeOffer"].toString(), );
//
//
//
//
//
}}
