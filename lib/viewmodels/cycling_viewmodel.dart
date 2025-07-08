import 'package:pry_menu_grid_provider/models/transport_model.dart';

class CyclingViewModel {
  List<TransportModel> get items => [
    TransportModel(title: 'Bicicleta', iconPath: 'assets/icons/bicycle.png'),
    TransportModel(title: 'walk', iconPath: 'assets/icons/walk.png'),
    TransportModel(title: 'boat', iconPath: 'assets/icons/boat.png'),
    TransportModel(title: 'bus', iconPath: 'assets/icons/bus.png'),
    // TransportModel(
    //   title: 'rail',
    //   iconPath: 'assets/icons/rail.png',
    // ),
    TransportModel(title: 'cycling', iconPath: 'assets/icons/bicycle.png'),
    
    TransportModel(title: 'train', iconPath: 'assets/icons/train.png'),
  ];
}
