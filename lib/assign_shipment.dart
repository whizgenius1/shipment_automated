import 'dart:math';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';

const _companyId = "cff2b57d-11d5-4415-a050-7924ca944b2f";

const String newCompanyID = ' 4cb03025-58fb-490e-aec7-128afd2a1bce';
const String newLocationID = 'a0d0af5e-e600-4b73-b077-f4d41b1de9e8';
const String newVehicleID = 'b6020cef-f0f0-4e2b-9c3f-4b8ddfe06bc3';

Future<Map> readJsonFile({String filePath = 'config.json'}) async {
  String input = await File(filePath).readAsString();
  Map map = json.decode(input) ?? {};
  return map;
}

writeJsonFile({required Map map, String filePath = 'config.json'}) async {
  String encodedBody = json.encode(map);

  await File(filePath).writeAsString(encodedBody);
}

const Map<String, String> config = {
  "company_id": "79f63b42-9190-44e3-9894-ec53fa58f5aa",
  "last_created_driver": "8155077989"
};
Map<String, dynamic> shipment = {
  "shipment_type": "LastMile",
  "transloaded": "0",
  "assigned_at": "2022-05-15 18:32:12",
  "start_location_id": "687439a2-cd0e-4497-b1c4-1b40920a61f9",
  "vehicle_id": "b99547b9-5caa-4075-a651-eba8a1687114",
  "driver_id": "4ec8d952-3b69-45bc-bc38-e2a6e436aaa6",
  "orders": [
    {
      "order_type": "pre_paid",
      "order_date": "2022-05-16 14:27:00",
      "order_value": "23",
      "order_history": {"defined": "later"},
      "options": {"flash_number": "08130403603", "master_order_id": null},
      "customer": {
        "name": "Customer Order 1",
        "address": "Yaba LCDA, Lagos, Nigeria",
        "address_latitude": "6.972",
        "address_longitude": "3.23452",
        "phone_number": "8034993503",
        "phone_code": "234",
        "customer_options": {
          "account_number": "0141055267",
          "account_name": "For Order 1",
          "account_type": "Current",
          "bank_name": "Polaris Bank"
        },
        "classifications": {"defined": "later"},
        "integration_id": "90221"
      },
      "classfications": {"defined": "later"},
      "integration_id": "902231",
      "order_details": [
        {
          "name": "Ade Gala Premium package",
          "code": "ft4090",
          "price": "200.00",
          "weight": "3.75",
          "weight_uom": "kg",
          "height": "10",
          "height_uom": "ft",
          "width": "5.2",
          "width_uom": "m",
          "length": "1.75",
          "length_uom": "m",
          "sku_uom": "g",
          "sku_no_pieces": "20",
          "quantity": 20,
          "classifications": {"defined": "later"},
          "integration_id": "91221"
        },
        {
          "name": "Indomie Chicken",
          "code": "ft4090",
          "price": "200.00",
          "weight": "3.75",
          "weight_uom": "kg",
          "height": "10",
          "height_uom": "ft",
          "width": "5.2",
          "width_uom": "m",
          "length": "1.75",
          "length_uom": "m",
          "sku_uom": "g",
          "sku_no_pieces": "20",
          "quantity": 20,
          "classifications": {"defined": "later"},
          "integration_id": "91221"
        },
        {
          "name": "Kellogs Corn Flakes",
          "code": "ft4090",
          "price": "200.00",
          "weight": "3.75",
          "weight_uom": "kg",
          "height": "10",
          "height_uom": "ft",
          "width": "5.2",
          "width_uom": "m",
          "length": "1.75",
          "length_uom": "m",
          "sku_uom": "g",
          "sku_no_pieces": "20",
          "quantity": 20,
          "classifications": {"defined": "later"},
          "integration_id": "91221"
        },
        {
          "name": "Pringles",
          "code": "ft4090",
          "price": "200.00",
          "weight": "3.75",
          "weight_uom": "kg",
          "height": "10",
          "height_uom": "ft",
          "width": "5.2",
          "width_uom": "m",
          "length": "1.75",
          "length_uom": "m",
          "sku_uom": "g",
          "sku_no_pieces": "20",
          "classifications": {"defined": "later"},
          "quantity": 20,
          "integration_id": "91221"
        },
        {
          "name": "Dano Milk",
          "code": "ft4090",
          "price": "200.00",
          "weight": "3.75",
          "weight_uom": "kg",
          "height": "10",
          "height_uom": "ft",
          "width": "5.2",
          "width_uom": "m",
          "length": "1.75",
          "length_uom": "m",
          "sku_uom": "g",
          "sku_no_pieces": "20",
          "classifications": {"defined": "later"},
          "quantity": 20,
          "integration_id": "91221"
        },
        {
          "name": "Power Oil",
          "code": "ft4090",
          "price": "200.00",
          "weight": "3.75",
          "weight_uom": "kg",
          "height": "10",
          "height_uom": "ft",
          "width": "5.2",
          "width_uom": "m",
          "length": "1.75",
          "length_uom": "m",
          "sku_uom": "g",
          "sku_no_pieces": "20",
          "quantity": 20,
          "classifications": {"defined": "later"},
          "integration_id": "91221"
        }
      ]
    },
    {
      "order_type": "pre_paid",
      "order_date": "2022-05-15 13:18:00",
      "order_value": "5000",
      "order_history": {"defined": "later"},
      "options": {"flash_number": "08130403603"},
      "customer": {
        "name": "Customer Order 2",
        "address": "Bariga LCDA, Lagos, Nigeria",
        "address_latitude": "6.55672",
        "address_longitude": "3.23452",
        "phone_number": "07066419262",
        "phone_code": "234",
        "customer_options": {
          "account_number": "0141055267",
          "account_name": "Customer order 2",
          "account_type": "Current",
          "bank_name": "Zenith Bank"
        },
        "classifications": {"defined": "later"},
        "integration_id": "902q11"
      },
      "classfications": {"defined": "later"},
      "integration_id": "99211w",
      "order_details": [
        {
          "name": "Dozie table water",
          "code": "ft4090",
          "price": "100.00",
          "weight": "0.75",
          "weight_uom": "kg",
          "height": "1",
          "height_uom": "ft",
          "width": "0.2",
          "width_uom": "m",
          "length": "0.75",
          "length_uom": "m",
          "sku_uom": "g",
          "sku_no_pieces": "12",
          "quantity": 20,
          "classifications": {"defined": "later"},
          "integration_id": "z42141"
        }
      ]
    },
    {
      "order_type": "pre_paid",
      "order_date": "2022-05-06 09:30:00",
      "order_value": "23",
      "order_history": {"defined": "later"},
      "options": {"flash_number": "8130403603"},
      "customer": {
        "name": "Ayo",
        "address": "Surulere LG, Lagos, Nigeria",
        "address_latitude": "6.45672",
        "address_longitude": "3.43452",
        "phone_number": "8147860862",
        "phone_code": "234",
        "customer_options": {
          "account_number": "0141055267",
          "account_name": "Ayo Sax Ventures",
          "account_type": "Savings",
          "bank_name": "Access Bank"
        },
        "classifications": {"defined": "later"},
        "integration_id": "903211a"
      },
      "classfications": {"defined": "later"},
      "integration_id": "092l11",
      "order_details": [
        {
          "name": "Ayo detergent soap",
          "code": "ft4090",
          "price": "150.00",
          "weight": "2.75",
          "weight_uom": "kg",
          "height": "2",
          "height_uom": "ft",
          "width": "2.2",
          "width_uom": "m",
          "length": "1.75",
          "length_uom": "m",
          "sku_uom": "g",
          "sku_no_pieces": "10",
          "classifications": {"defined": "later"},
          "quantity": 20,
          "integration_id": "90211k1"
        }
      ]
    },
    // {
    //     "order_type": "pre_paid",
    //     "order_date": "2022-05-06 09:30:00",
    //     "order_value": "23",
    //     "order_history": {
    //         "defined": "later"
    //     },
    //     "options": {
    //         "flash_number": "8130403603"
    //     },
    //     "customer": {
    //         "name": "Ayo",
    //         "address": "Surulere LG, Lagos, Nigeria",
    //         "address_latitude": "6.45672",
    //         "address_longitude": "3.43452",
    //         "phone_number": "8153796851",
    //         "phone_code": "234",
    //         "customer_options": {
    //             "account_number": "0141055267",
    //             "account_name": "Ayo Sax Ventures",
    //             "account_type": "Savings",
    //             "bank_name": "Access Bank"
    //         },
    //         "classifications": {
    //             "defined": "later"
    //         },
    //         "integration_id": "903211a"
    //     },
    //     "classfications": {
    //         "defined": "later"
    //     },
    //     "integration_id": "092l11",
    //     "order_details": [
    //         {
    //             "name": "Ayo detergent soap",
    //             "code": "ft4090",
    //             "price": "150.00",
    //             "weight": "2.75",
    //             "weight_uom": "kg",
    //             "height": "2",
    //             "height_uom": "ft",
    //             "width": "2.2",
    //             "width_uom": "m",
    //             "length": "1.75",
    //             "length_uom": "m",
    //             "sku_uom": "g",
    //             "sku_no_pieces": "10",
    //             "classifications": {
    //                 "defined": "later"
    //             },
    //             "quantity": 20,
    //             "integration_id": "90211k1"
    //         }
    //     ]
    // },
    // {
    //     "order_type": "pre_paid",
    //     "order_date": "2022-05-06 09:30:00",
    //     "order_value": "23",
    //     "order_history": {
    //         "defined": "later"
    //     },
    //     "options": {
    //         "flash_number": "8130403603"
    //     },
    //     "customer": {
    //         "name": "Ayo",
    //         "address": "Surulere LG, Lagos, Nigeria",
    //         "address_latitude": "6.45672",
    //         "address_longitude": "3.43452",
    //         "phone_number": "7062063551",
    //         "phone_code": "234",
    //         "customer_options": {
    //             "account_number": "0141055267",
    //             "account_name": "Ayo Sax Ventures",
    //             "account_type": "Savings",
    //             "bank_name": "Access Bank"
    //         },
    //         "classifications": {
    //             "defined": "later"
    //         },
    //         "integration_id": "903211a"
    //     },
    //     "classfications": {
    //         "defined": "later"
    //     },
    //     "integration_id": "092l11",
    //     "order_details": [
    //         {
    //             "name": "Ayo detergent soap",
    //             "code": "ft4090",
    //             "price": "150.00",
    //             "weight": "2.75",
    //             "weight_uom": "kg",
    //             "height": "2",
    //             "height_uom": "ft",
    //             "width": "2.2",
    //             "width_uom": "m",
    //             "length": "1.75",
    //             "length_uom": "m",
    //             "sku_uom": "g",
    //             "sku_no_pieces": "10",
    //             "classifications": {
    //                 "defined": "later"
    //             },
    //             "quantity": 20,
    //             "integration_id": "90211k1"
    //         }
    //     ]
    // }
  ],
  "classifications": {"defined": "later"},
  "integration_id": "832115"
};

Map<String, String> _header = {
  "Content-Type": "application/json",
  "Accept": "application/json",
};
Map<String, String> _authHeader({required String token}) => {
      "Content-Type": "application/json",
      "Accept": "application/json",
      "Authorization": "Bearer $token"
    };

//const String baseUrl = 'https://sem-dev.movam.app/api/v1/';
const String baseUrl = 'https://movam-sem-app-prod.movam.app/api/v1/';
const String loginURL = '${baseUrl}guest/login';
const String getCompanyIdURL = '${baseUrl}company/view';
const String createDriverURL = '${baseUrl}drivers/insert';
const String getDriverURL = '${baseUrl}drivers/view';
const String vehiclesURL = '${baseUrl}vehicles/view';
const String startLocationURL = '${baseUrl}locations/view';
const String assignShipmentURL = '${baseUrl}custom/omnibiz/shipment/insert';

String makeID({length = 10}) {
  String result = '';
  String characters =
      'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
  int charactersLength = characters.length;
  for (int i = 0; i < length; i++) {
    result += characters[Random().nextInt(charactersLength)];
  }

  return result;
}

Future<String> getShipperToken() async {
  print('getting token');
  Map<String, String> body = {
    "email": "movamshipper@movam.com",
    "password": "password"
  };
  String encodedBody = json.encode(body);

  return await post(
          Uri.parse(
            loginURL,
          ),
          body: encodedBody,
          headers: _header)
      .then((Response response) {
    // print(response.statusCode);
    // print(response.body);
    if (response.statusCode == 202) {
      Map<String, dynamic> responseBody = json.decode(response.body) ?? {};

      Map data = responseBody['data'] ?? {};
      String token = data['token'];

      print('gotten token:$token\n');
      return token;
    }
    print('${response.statusCode} could not get token\n');
    return '';
  });
}

Future<String> getCompanyID({required String token}) {
  return get(Uri.parse(getCompanyIdURL), headers: _authHeader(token: token))
      .then((Response response) {
    print(response.statusCode);
    print(response.body);
    return '';
  });
}

Future<String> createDriver(
    {required String token,
    required String phoneNumber,
    String companyID = newCompanyID}) async {
  Map<String, dynamic> body = {
    "phone_code": "234",
    "phone_number": phoneNumber,
    "name": "John Doe",
    "location_type": "LastMile",
    "company_id": companyID,
    "status": 1,
    "integration_id": makeID(length: 7),
    "classifications": {"claimKey": "8839D90", "businessId": "6789987"}
  };

  String encodedBody = json.encode(body);

  return post(Uri.parse(createDriverURL),
          body: encodedBody, headers: _authHeader(token: token))
      .then((Response response) {
    // print(response.statusCode);
    // print(response.body);
    if (response.statusCode == 201) {
      Map responseBody = json.decode(response.body) ?? {};
      Map data = responseBody['data'] ?? {};
      String driverID = data['id'] ?? '';
      print('Driver created successfully: $driverID: $phoneNumber\n');
      return driverID;
    }

    Map configJson = {
      'company_id': '79f63b42-9190-44e3-9894-ec53fa58f5aa',
      'last_created_driver': phoneNumber
    };

    writeJsonFile(map: configJson);

    print('${response.statusCode} could not create driver\n');

    return '';
  });
}

//8155077910
Future<String> getADriver(
    {String url = getDriverURL,
    required String token,
    String phoneNumber = '8155077910'}) async {
  bool foundDriver = false;
  print('getting driver');
  String urll = url;
  return get(Uri.parse(urll), headers: _authHeader(token: token))
      .then((Response response) {
    if (response.statusCode == 200) {
      Map<String, dynamic> responseBody = json.decode(response.body) ?? {};
      List data = responseBody['data'] ?? [];
      Map links = responseBody['links'] ?? {};
      urll = links['next'] ?? '';
      for (int i = 0; i < data.length; i++) {
        Map<String, dynamic> phone = data[i]['phone'] ?? {};
        String number = phone['number'] ?? '';
        if (number == phoneNumber) {
          foundDriver = true;

          print('Found Driver: $phoneNumber: ${data[i]['id']}\n');
          return data[i]['id'];
        } else {}
      }
      if (foundDriver) {
        null;
      } else {
        urll.isEmpty
            ? print('Driver not found.')
            : getADriver(url: urll, token: token, phoneNumber: phoneNumber);
      }
    }

    print('${response.statusCode} could not get driver\n');
    return '';
  });
}

Future<String> getAVehicle({required String token}) async {
  print('getting vehicle');
  return get(Uri.parse(vehiclesURL), headers: _authHeader(token: token))
      .then((Response response) {
    // print(response.statusCode);
    // print(response.body);
    if (response.statusCode == 200) {
      Map responseBody = json.decode(response.body) ?? {};
      List data = responseBody['data'] ?? [];

      String vehicleID =
          data.isEmpty ? '' : data[Random().nextInt(data.length)]['id'];
      vehicleID.isEmpty
          ? print('No vehicle found\n')
          : print('Vehicle ID gotten successfully: $vehicleID\n');
      return vehicleID;
    }
    print('${response.statusCode}could not get driver\n');
    return '';
  });
}

Future<String> getStartLocation({required String token}) async {
  print('getting start location');
  return get(Uri.parse(startLocationURL), headers: _authHeader(token: token))
      .then((Response response) {
    // print(response.statusCode);
    // print(response.body);
    if (response.statusCode == 200) {
      Map responseBody = json.decode(response.body) ?? {};
      List data = responseBody['data'] ?? [];

      String locationID =
          data.isEmpty ? '' : data[Random().nextInt(data.length)]['id'];

      locationID.isEmpty
          ? print('No location found\n')
          : print('Location ID gotten successfully: $locationID\n');
      return locationID;
    }
    print('${response.statusCode} could not get start location\n');
    return '';
  });
}

Future assignShipment(
    {required String token,
    required String driverId,
    required String vehicleId,
    required String locationId}) async {
  shipment["driver_id"] = driverId;
  shipment["vehicle_id"] = vehicleId;
  shipment["start_location_id"] = locationId;
  shipment["integration_id"] = makeID(length: 18);
  List<String> ids = [];
  List<String> masterIds = [];
  int mastersCount = -1;

  List shipmentOrders = shipment['orders'] ?? [];

  for (int i = 0; i < shipmentOrders.length; i++) {
    ids.add(makeID(length: 25));
    shipmentOrders[i]['integration_id'] = ids[ids.length - 1];
    if (shipmentOrders[i]['options']['master_order_id'] != null) {
      shipmentOrders[i]['options']['master_order_id'] = null;
      masterIds.add(shipmentOrders[i]['integration_id']);
      ++mastersCount;
    } else {
      shipmentOrders[i]['options']['master_order_id'] =
          masterIds[mastersCount < 0 ? 0 : mastersCount];
    }
    List orderDetails = shipmentOrders[i]['order_details'] ?? [];
    for (int x = 0; x < orderDetails.length; x++) {
      orderDetails[x]['integration_id'] = makeID(length: 30);
    }
  }
  try {
    String encodedBody = json.encode(shipment);
    post(
            Uri.parse(
              assignShipmentURL,
            ),
            body: encodedBody,
            headers: _authHeader(token: token))
        .then((Response response) {
      print(response.statusCode);
      print(response.body);
    });
  } catch (error) {
    print('Error creating shipments:$error');
  }
}

Future assignShipmentCreate(
    {required String token,
    required String driverId,
    required String vehicleId,
    required String locationId}) async {
  shipment["driver_id"] = driverId;
  shipment["vehicle_id"] = vehicleId;
  shipment["start_location_id"] = locationId;
  shipment["integration_id"] = makeID(length: 18);

  List shipmentOrder = shipment['orders'] ?? [];

  for (int i = 0; i < shipmentOrder.length; i++) {
    shipmentOrder[i]['integration_id'] = makeID(length: 25);
    shipmentOrder[i]['customer']['integration_id'] = makeID(length: 25);
    List orderDetails = shipmentOrder[i]['order_details'] ?? [];
    for (int x = 0; x < orderDetails.length; x++) {
      orderDetails[x]['integration_id'] = makeID(length: 30);
    }
  }
  try {
    String encodedBody = json.encode(shipment);
    post(
            Uri.parse(
              assignShipmentURL,
            ),
            body: encodedBody,
            headers: _authHeader(token: token))
        .then((Response response) {
      print(response.statusCode);
      print(response.body);
    });
  } catch (error) {
    print('Error creating shipments:$error');
  }
}
