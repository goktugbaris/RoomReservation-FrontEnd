class RoomBooking {
  final int Id;
  final String FirstName;
  final String LastName;
  final String Email;
  final String PhoneNumber;
  final DateTime Date;
  final Duration StartTime;
  final Duration EndTime;
  final int RoomId;
  final int EmployeeId;

  RoomBooking(
      {required this.RoomId,
      required this.PhoneNumber,
      required this.Email,
      required this.LastName,
      required this.FirstName,
      required this.EmployeeId,
      required this.Date,
      required this.EndTime,
      required this.Id,
      required this.StartTime});

  factory RoomBooking.fromJson(Map<String, dynamic> json) {
    return RoomBooking(
        RoomId: json['RoomId'],
        PhoneNumber: json['PhoneNumber'],
        Email: json['Email'],
        LastName: json['LastName'],
        FirstName: json['FirstName'],
        EmployeeId: json['EmployeeId'],
        Date: json['Date'],
        EndTime: json['EndTime'],
        Id: json['Id'],
        StartTime: json['StartTime']);
  }

  Map toJson() {
    return {
      "RoomId": this.RoomId,
      "PhoneNumber": this.PhoneNumber,
      "Email": this.Email,
      "LastName": this.LastName,
      "FirstName": this.FirstName,
      "EmployeeId": this.EmployeeId,
      "Date": this.Date,
      "EndTime": this.EndTime,
      "Id": this.Id,
      "StartTime": this.StartTime,
    };
  }
  static List<RoomBooking> roomBookingsToList(List roomBookingsToList) {
    return roomBookingsToList.map((data) {
      return RoomBooking.fromJson(data);
    }).toList();
  }
}
