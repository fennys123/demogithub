
class UserModel {

  final String last_Name; //esto se saca de la base de datos del proyecto
  final String first_Name;
  final String birth_Date;
  final String? cell_Phone;
  final String? home_Phone;
  final String? photo_path;


  UserModel({
    required this.last_Name,
    required this.first_Name,
    required this.birth_Date,//son importantes
    this.cell_Phone,// no son importantes
    this.home_Phone,
    this.photo_path,
  });

  factory UserModel.fromJson(Map<String, dynamic> json){
    return UserModel(
      last_Name: json['last_Name'],// con esto va a recibir un json
      first_Name: json['first_Name'],
      birth_Date: json['birth_Date'],
      cell_Phone: json['cell_Phone'],
      home_Phone: json['home_Phone'],
      photo_path: json['photo_path'],
    );
  }

  Map<String, dynamic>toJson() => { //es esactamente lo mismo que el factory
    'last_Name': last_Name,
    'first_Name': first_Name,
    'birth_Date': birth_Date,
    'cell_Phone': cell_Phone,
    'home_Phone': home_Phone,
    'photo_path': photo_path,
  };




}
