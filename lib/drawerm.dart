import 'package:flutter/material.dart';

class Drawerm extends StatefulWidget {
  @override
  _DrawermState createState() => _DrawermState();
}

class _DrawermState extends State<Drawerm> {
 
  @override
   //posicion de las pnatallas
  int _numerop = 0;
  //creamos las combinaciones de pantalla donde usamos una lista de widgets
  static const List<Widget> _pantallas = <Widget>[
    Text(
      'Posición 0: Juegos',style: TextStyle(fontSize: 40),
    ),
    Text(
      'Posición 1: Películas',style: TextStyle(fontSize: 40),
    ),
    Text(
      'Posición 2: Apps',style: TextStyle(fontSize: 40),
    ),
    Text(
      'Posición 3: Libros',style: TextStyle(fontSize: 40),
    ),
    
  ];
  //funcion para recorrer las pantallas
  void _recorrido(int index) {
    setState(() {
      _numerop = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      //BottomNavigatonBar= para navegar con las pantallas mediantes los botones
      bottomNavigationBar: _botonave(),
      // para el cambio de pantalla en el body cambiamos y colocamos la 
      //funcion para acceder a las posiciones
      body: Center(
        child: _pantallas.elementAt(_numerop),
      ),
      //Drawer=Pantalla de cuentas que se desliza de izq a derecha
      drawer: _drawern(),
      appBar: AppBar(
        title: Text("MANEJO DRAWER"),
        centerTitle: true,
        actions: <Widget>[Icon(Icons.person_add)],
      ),
    );
  }

  Widget _botonave() {
    return BottomNavigationBar(
      //maenjamos los tipos de animacion
      type: BottomNavigationBarType.fixed,
      //cambiamos el color de los item (icono, texto)
      unselectedItemColor: Colors.purple,
      //color de cuando se pone un evento
      fixedColor: Colors.teal,
      //asignamos el numero de pantallas
      currentIndex: _numerop,
      //manejamos el recorrido
      onTap: _recorrido,
      //los botones deben ser mayores o igual a >=2
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.videogame_asset), title: Text("Juegos")),
        BottomNavigationBarItem(icon: Icon(Icons.local_movies), title: Text("Películas"),),
        BottomNavigationBarItem(icon: Icon(Icons.apps), title: Text("Apps")),
        BottomNavigationBarItem(icon: Icon(Icons.book),title: Text('Libros'),
        ),
      ],
    );
  }

  Widget _drawern() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(bottom: 12),
        children: <Widget>[
          UserAccountsDrawerHeader(
            //definimos las cuentas
            accountEmail: Text("nicolepgc91@gmail.com"),
            accountName: Text("Nicole Garcia"),
            //Cuenta Principal 
            currentAccountPicture: CircleAvatar(
              child: Text("G",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              backgroundColor: Colors.green[800],
            ),
            //Cuentas otras
            otherAccountsPictures: <Widget>[
              CircleAvatar(
                child: Text("P",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
                backgroundColor: Colors.purple,
              ),
              CircleAvatar(
                child: Text("N",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                backgroundColor: Colors.green[300],
              )
            ],
          ),
          //cuerpo del drawer nos definimos un widget aparte donde mandamos (icono,nombretarjeta)
          _listacuerpo(Icons.apps, "Mis apps"),
          _listacuerpo(Icons.add_alert, "Notificaciones"),
          _listacuerpo(Icons.loop, "Suscripciones"),
          _listacuerpo(Icons.turned_in_not, "Lista de Deseos"),
          //dibuja una linea horizontal
          Divider(color: Colors.black54, ),
          _listacuerpo(Icons.person_outline, "Cuenta"),
          _listacuerpo(Icons.credit_card, "Formas de Pago"),
          _listacuerpo(Icons.security, "Play Protectet"),
          _listacuerpo(Icons.settings, "Configuración"),
          Divider(color: Colors.black54,),
          _listacuerpo(Icons.local_movies, "Abrir app de Películas"),
          _listacuerpo(Icons.book, "Abirb app de Libros"),
          _listacuerpo(Icons.music_video, "Abrir app de Música"),
          _listacuerpo(Icons.settings, "Configuración"),
          Divider(color: Colors.black54),
          _listacuerpo(Icons.music_video, "Buscar Música"),
          Divider(color: Colors.black54),
          _listaotro("Canjear"),
          _listaotro("Ayuda y Comentarios"),
          _listaotro("Guia para Padres"),
          _listaotro("Acerca de Google Play")
        ],
      ),
    );
  }

  Widget _listacuerpo(IconData icon, String nombrec) {
    return InkWell(
        onTap: () {},
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 12, left: 14, bottom: 10),
          child: Row(
            children: <Widget>[
              Icon(
                icon,
                size: 25,
                color: Colors.black54,
              ),
              SizedBox(
                width: 25,
              ),
              Expanded(
                  child: Text(
                nombrec,
                style: TextStyle(fontSize: 15, color: Colors.black87),
              ))
            ],
          ),
        ));
  }

  Widget _listaotro(String nombrecc) {
    return Container(
        padding: EdgeInsets.only(left: 14, bottom: 14, top: 12),
        child:
        Text( nombrecc,
          style: TextStyle(fontSize: 15, color: Colors.black87),
    ));
  }
}
