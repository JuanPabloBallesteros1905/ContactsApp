class Contactos {
  final String? _nombre;
  final String? _apellido;
  final String? _numero;

  Contactos(this._nombre, this._numero, this._apellido);

  String? get nombre => _nombre;

  String? get apellido => _apellido;

  String? get numero => _numero;

  set nombre(String? nombre) => _nombre;

  set apellido(String? apellido) => _apellido;

  set numero(String? numero) => _numero;

  void remove(Type contactos) {}
}
