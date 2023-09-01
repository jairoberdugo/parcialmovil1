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

String obtenfechav(var List, posicion){
var f= List[posicion].split('-');
var fechavenc= f[2];
  return fechavenc;
}

String obtenom(var List, posicion){
var f= List[posicion].split('-');
var nomp= f[0];
  return nomp;
}

String obtencant(var List, int posicion){
var f= List[posicion].split('-');
var cantp= f[1];
  return cantp;
}

String obtenprecio(var List, int posicion){
var f= List[posicion].split('-');
var prec= f[3];
  return prec;
}

void main() {
  var List = ["LINASA-5-20/09/2023-12500", "TE VERDE-10-10/09/2023-15000","LEVADURA-45-12/09/2023-20000"];
  String producto = "", fecha = "";
  bool cantp = true;
  print("DIGITE LA FECHA ACTUAL EN ESTE FORMATO DAY/MONTH/YEAR:");
      String? fechaactu = stdin.readLineSync();
      int total=0;

  do {
    print(
        "BIENVENIDO A MARKETSHOP NATURISTA! SELECCIONE QUE PRODUCTO DESEA AGREGAR A SU CARRITO: \n" +
            "1. LINASA \n" +
            "2. TE VERDE \n" +
            "3. LEVADURA \n" +
            "4. CALCULAR TOTAL Y PAGAR");
    String? r = stdin.readLineSync();
    switch (r) {
      case "1":
      // obtengo fecha vencimiento producto
      var fechavenc= obtenfechav(List, 0);
      // obtengo nombre producto
      var nomp = obtenom(List, 0);
      // obtengo cantidad disponible producto
      var cantpro =obtencant(List, 0);
      // obtengo precio
      var prec= obtenprecio(List, 0);
      print("que cantidad desea comprar? : ");
      var ca = stdin.readLineSync();

      
     
     // DateTime date = DateTime.parse(fecha);
     // fecha = fecha.replaceAll('/', '-');

        break;
      case "2":
      var fechavenc= obtenfechav(List, 1);
      var nomp = obtenom(List, 1);
      var cantpro =obtencant(List, 1);
       var prec= obtenprecio(List, 0);

        break;
        case "3":
         break;
         case "4":
         cantp=false;
         print("EL TOTAL DE SU COMPRA ES: $total");
         break;
    }
  } while (cantp != false);
}
