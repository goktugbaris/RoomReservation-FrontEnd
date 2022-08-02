class Department{
  final int DepartmentId;
  final String DepartmentName;
  final int OrganizationId;

  Department({required this.DepartmentId, required this.OrganizationId, required this.DepartmentName});

  factory Department.fromJson(Map<String,dynamic> json){
    return Department(DepartmentId: json['DepartmentId'], OrganizationId: json['OrganizationId'], DepartmentName: json['DepartmentName']);
  }

  Map toJson(){
    return{
      "DepartmentId": this.DepartmentId,
      "DepartmentName": this.DepartmentName,
      "OrganizationId": this.OrganizationId,
    };
  }
  static List<Department> departmentsToList(List departmentToList) {
    return departmentToList.map((data) {
      return Department.fromJson(data);
    }).toList();
  }
}