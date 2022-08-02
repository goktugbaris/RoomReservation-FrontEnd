class Organization{
  final int OrganizationId;
  final String OrganizationName;

  Organization({required this.OrganizationId,required this.OrganizationName});

  factory Organization.fromJson(Map<String,dynamic> json){
    return Organization(OrganizationId: json['OrganizationId'], OrganizationName: json['OrganizationName']);
  }
  Map toJson(){
    return{
      "OrganizationId": this.OrganizationId,
      "OrganizationName": this.OrganizationName,
    };
  }
}