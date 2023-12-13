
class RolModel {

  final String nombre;

  RolModel({
    required this.nombre,
  });

  factory RolModel.fromJson(Map<String, dynamic> json){
    return RolModel(
      nombre: json['nombre'],
    );
  }

  Map<String, dynamic> toJson() => {
    'nombre': nombre,
  };
}
