class Room {
  final int RoomId;
  final int Capacity;
  final int Floor;
  final String RoomInfo;
  final bool IsAvaliable;
  final bool IsHome;

  Room(
      {required this.Capacity,
      required this.Floor,
      required this.IsAvaliable,
      required this.IsHome,
      required this.RoomId,
      required this.RoomInfo});

  factory Room.fromJson(Map<String, dynamic> json) {
    return Room(
        Capacity: json['Capaciy'],
        Floor: json['Floor'],
        IsAvaliable: json['IsAvaliable'],
        IsHome: json['IsHome'],
        RoomId: json['RoomId'],
        RoomInfo: json['RoomInfo']);
  }

  Map toJson(){
    return{
      "RoomId": this.RoomId,
      "Capacity": this.Capacity,
      "Floor": this.Floor,
      "RoomInfo": this.RoomInfo,
      "IsAvaliable": this.IsAvaliable,
      "IsHome": this.IsHome,
    };
  }
  static List<Room> roomsToList(List roomsToList) {
    return roomsToList.map((data) {
      return Room.fromJson(data);
    }).toList();
  }
}
