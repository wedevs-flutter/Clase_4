import 'package:flutter/material.dart';

class Drawerm extends StatefulWidget {
  @override
  _DrawermState createState() => _DrawermState();
}

class _DrawermState extends State<Drawerm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _pantadra(),
      appBar: AppBar(
        title: Text("MANEJO DRAWER"),
        centerTitle: true,
        //leading: Icon(Icons.person_add),
        actions: <Widget>[Icon(Icons.person_add)],
      ),
    );
  }

  Widget _pantadra() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(bottom: 12),
        children: <Widget>[
          UserAccountsDrawerHeader(
            //Cuenta Principal
            currentAccountPicture: CircleAvatar(
              child: Text("G",style: TextStyle(fontSize: 40,color: Colors.white),),
              backgroundColor: Colors.green[800],
            ),
            //Cuentas otras
            otherAccountsPictures: <Widget>[
              CircleAvatar(
                child: Text("P",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                backgroundColor: Colors.purple,
              ),
              CircleAvatar(
                child: Text("N",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                backgroundColor: Colors.green[300],
              )
            ],

            accountEmail: Text("nicolepgc91@gmail.com"),
            accountName: Text("Nicole Garcia"),
          ),
          //cuerpo del drawer
          _listacuerpo(Icons.apps, "Mis apps"),
          _listacuerpo(Icons.add_alert, "Notificaciones"),
          _listacuerpo(Icons.loop, "Suscripciones"),
          _listacuerpo(Icons.turned_in_not, "Lista de Deseos"),
          Divider(color: Colors.black54,),
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
    return Container(
      //color: Colors.redAccent,
      width: double.infinity,
      padding: EdgeInsets.only(top: 12,left: 14,bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
        Icon(icon,size: 25,color: Colors.black54,),
        SizedBox(width: 25,),
        Expanded(child: Text(nombrec,style: TextStyle(fontSize: 15,color: Colors.black87),))],
      ),
    );
  }
  Widget _listaotro(String nombrecc){
    return Container(
      padding: EdgeInsets.only(left: 14, bottom: 14,top: 12),
      child:Text(nombrecc,style: TextStyle(fontSize: 15,color: Colors.black87),)
    );
  }
}
