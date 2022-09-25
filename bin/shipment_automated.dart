import 'dart:io';

import 'package:shipment_automated/assign_shipment.dart';

void main(List<String> arguments) async {
  print('Welcome\nWhat do you want to do');
  print('Press 1 to create driver only');
  print('Press 2 to create driver and assign shipment');
  print('Press 3 to create shipment for already assigned number');

  String value = stdin.readLineSync() ?? '';

  print('Enter phone number');
  String phone = stdin.readLineSync() ?? '';

  if (phone.length >= 10) {
    if (value == '1') {
      print('1 was selected');
      await getShipperToken().then(
          (String token) => createDriver(token: token, phoneNumber: phone));
    } else if (value == '2') {
      print('2 was selected');
      await getShipperToken().then((String token) => getAVehicle(token: token)
          .then((String vehicleID) =>
              getStartLocation(token: token).then((value) => null)));
    } else if (value == '3') {
      await getShipperToken().then((String token) =>
          getADriver(token: token, phoneNumber: phone).then((String driverID) =>
              getAVehicle(token: token).then((String vehicleID) =>
                  getStartLocation(token: token).then((String locationID) {
                    print('Assigning shipment to driver:$phone\n');

                    if (token.isEmpty ||
                        driverID.isEmpty ||
                        vehicleID.isEmpty ||
                        locationID.isEmpty) {
                    } else {
                      assignShipmentCreate(
                          token: token,
                          driverId: driverID,
                          locationId: newLocationID,
                          vehicleId: newVehicleID);
                    }
                  }))));
    } else {
      print('Invalid response');
    }
  } else {
    print('invalid phone number');
  }
}
