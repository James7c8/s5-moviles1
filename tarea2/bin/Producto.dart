class Producto {
  String codigo;
  String descripcion;
  double precio;
  int existencia;

  Producto(this.codigo, this.descripcion, this.precio, this.existencia);

  get getDescripcion => descripcion;

  set setDescripcion(descripcion) => this.descripcion = descripcion;

  get getPrecio => precio;

  set setPrecio(precio) => this.precio = precio;

  get getExistencia => existencia;

  set setExistencia(existencia) => this.existencia = existencia;

  @override
  String toString() {
    return '${codigo.padRight(8)} ${descripcion.padRight(15)} ${precio.toString().padLeft(15)} ${existencia.toString().padLeft(3)}';
  }
}
