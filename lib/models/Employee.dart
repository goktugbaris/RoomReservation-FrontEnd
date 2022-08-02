class Employee {
  final int EmployeeId;
  final String FirstName;
  final String LastName;
  final String Email;
  final String PhoneNumber;
  final bool IsBusy;
  final int DepartmentId;

  Employee(
      {required this.DepartmentId,
      required this.Email,
      required this.EmployeeId,
      required this.FirstName,
      required this.IsBusy,
      required this.LastName,
      required this.PhoneNumber});

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
        DepartmentId: json['DepartmentId'],
        Email: json['Email'],
        EmployeeId: json['EmployeeId'],
        FirstName: json['FirstName'],
        IsBusy: json['IsBusy'],
        LastName: json['LastName'],
        PhoneNumber: json['PhoneNumber']);
  }

  Map toJson(){
    return{
      "EmployeeId": this.EmployeeId,
      "FirstName": this.FirstName,
      "LastName": this.LastName,
      "Email": this.Email,
      "PhoneNumber": this.PhoneNumber,
      "IsBusy": this.IsBusy,
      "DepartmentId": this.DepartmentId
    };
  }
  static List<Employee> employeesToList(List employeesToList) {
    return employeesToList.map((data) {
      return Employee.fromJson(data);
    }).toList();
  }
}
