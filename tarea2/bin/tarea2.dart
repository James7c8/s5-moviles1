import 'package:tarea2/tarea2.dart' as tarea2;
import 'Producto.dart';

void main() {
  List<Producto> productosLista = [];
  productosLista.add(Producto('codigo1', 'descripcion1', 1000000, 1));
  productosLista.add(Producto('codigo2', 'descripcion2', 2000000, 2));
  productosLista.add(Producto('codigo3', 'descripcion2', 3000000, 3));

  // String codigo = "Código";
  // String descripcion = "Descripción";
  // String precio = "Precio";
  // String existencia = "Existencia";

  // print(
  //     '${codigo.padRight(8)} ${descripcion.padRight(15)} ${precio.toString().padLeft(15)} ${existencia.toString().padLeft(1)}');
  // for (Producto producto in productosLista) {
  //   print(producto);
  // }

  List<Map> productosMapa = [];

  for (Producto producto in productosLista) {
    productosMapa.add({
      'Codigo': producto.getCodigo,
      'Descripcion': producto.getDescripcion,
      'Precio': producto.getPrecio,
      'Existencia': producto.getExistencia
    });
  }

  for (Map producto in productosMapa) {
    print(producto);
  }
}
