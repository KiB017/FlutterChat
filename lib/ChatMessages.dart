import 'package:flutter/material.dart';

class Chatmessages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          //Estos dos parametros hacen que el mensaje y la imagen estes alineados a la izaquierda
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Este es el primer mensaje
            Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Hola',
                style: TextStyle(color: Colors.white),
              ),
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.blueAccent[400],
                  borderRadius: BorderRadius.circular(25)),
            ),
            //El SizedBox crea un espacio entre el container y la imagen
            SizedBox(width: 10),
            //Esta es la imagen
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.network(
                //Este el gif de wumpus
                'https://media.tenor.com/m2VEX3BeAu4AAAAi/hi.gif',
                width: 250,
                height: 250,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment
              .end, //Estos dos parametros alinea el ultimo mensaje hacia la derecha
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            //Este es el ultimo mensaje
            Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Hola',
                style: TextStyle(color: Colors.white),
              ),
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.greenAccent[400],
                  borderRadius: BorderRadius.circular(25)),
            ),
          ],
        ),
      ],
    );
  }
}
