// Se desea realizar los siguientes criterios de aceptación de 1 requerimiento para el módulo de productos:

// a.      Se debe tener un objeto de ventas donde se anexará cada producto que sea seleccionado

// b.      Cada producto que estén 15 días a vencer se le otorgará un 15% de descuento

// c.      Mostrar el total que se debe pagar

import 'dart:io';
class productoss{
  String? nombre;
  int? cantidad;
  productoss(String nombre, int cantidad){
    this.nombre = nombre;
    this.cantidad=cantidad;
  }
}

String obtenfechav(var List){
var f= List[0].split('-');
var fechavenc= f[2];
  return fechavenc;
}

String obtenom(var List){
var f= List[0].split('-');
var nomp= f[0];
  return nomp;
}

String obtencant(var List){
var f= List[0].split('-');
var cantp= f[1];
  return cantp;
}

void main() {
  var List = ["LINASA-5-20/09/2023", "TE VERDE-10-10/09/2023","LEVADURA-45-12/09/2023"];
  String producto = "", fecha = "";
  bool cantp = true;

  do {
    print(
        "BIENVENIDO A MARKETSHOP NATURISTA! SELECCIONE QUE PRODUCTO DESEA AGREGAR A SU CARRITO: \n" +
            "1. LINASA \n" +
            "2. TE VERDE \n" +
            "3. LEVADURA \n" +
            "6. CALCULAR TOTAL Y PAGAR");
    String? r = stdin.readLineSync();
    switch (r) {
      case "1":
      // obtengo fecha vencimiento producto
      var fechavenc= obtenfechav(List);
      // obtengo nombre producto
      var nomp = obtenom(List);
      // obtengo cantidad disponible producto
      var cantpro =obtencant(List);

      var fecha = DateTime.now();
      print (fecha);

     // fecha = fecha.replaceAll('/', '-');
     // DateTime date = DateTime.parse(fecha);

        break;
      case "2":
        print("entraste a la clase 1");
        break;
    }
  } while (cantp != false);
}
