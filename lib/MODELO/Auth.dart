class Auth {
  String nombre = '';
  String id = '';
  String telefono = '';
  String foto = '';

  String get getId => id;

  set setId(String id) => this.id = id;

  String get getNombre => nombre;

  set setNombre(String nombre) => this.nombre = nombre;

  String get getTelefono => telefono;

  set setTelefono(String telefono) => this.telefono = telefono;

  String get getFoto => foto;

  set setFoto(String foto) => this.foto = foto;
}
