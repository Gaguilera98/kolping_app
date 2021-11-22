class EspecialidadesModelo {
  int id;
  String nombre;
  String foto;

  EspecialidadesModelo(this.id, this.nombre, this.foto);
}

final ListaEspecialidades = [
  EspecialidadesModelo(1, "pediatria", "pediatria.jpg"),
  EspecialidadesModelo(2, "Odontologia", "odontologia.jpg"),
  EspecialidadesModelo(3, "Otorrino", "otorrino.jpg"),
  EspecialidadesModelo(4, "Geriatria", "geriatria.jpg")
];
