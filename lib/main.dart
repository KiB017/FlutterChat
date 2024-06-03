import 'package:counter_app/ChatMessages.dart'; //importa la clase Chatmessages
import 'package:counter_app/ChatInput.dart'; //importa la clase Chatinput
import 'package:flutter/material.dart'; //Importa el paquete de flutter

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatelessWidget {
  final ScrollController controller =
      ScrollController(); //Crea un variable con el controlador de scroll

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Nombre del sujeto
        title: Text('Parangaricutirimicuaro'),
      ),
      //Esto mantiene fijo el input del chat
      body: Stack(
        children: <Widget>[
          //ListView.builder almacena los mensajes dentro de una lista que se repetira 36 veces
          ListView.builder(
            controller:
                controller, //Aqui donde se coloca el controlador de scroll
            itemCount: 36, //Cuenta las veces en que se repetira el widget
            itemBuilder: (BuildContext context, int index) {
              return Chatmessages(); //Aqui contiene todo los mensajes que se va a genera en bucle hasta que llegue a 36 veces
            },
          ),
          Container(
            alignment:
                Alignment.bottomCenter, //alinea el widget centrado en el fondo
            child:
                Chatinput(), //Aqui se despliega todos los widgets que esta en la clase Chat Input
          ),
        ],
      ),
    );
  }
}
