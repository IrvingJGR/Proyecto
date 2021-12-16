import 'package:flutter/material.dart';

class Perfil extends StatefulWidget {
   

  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Acerca")
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: const [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/scott.jpeg'),
          ),
          Text("Irving Jahasiel Garcia Rubio", style: TextStyle(color: Colors.white, fontSize: 30)),
          Text("Desarrollador", style: TextStyle(color: Colors.white, fontSize: 30)),
        //  Text(", style: TextStyle(color: Colors.white, fontSize: 30)),
           MainContainer(),
           MainContainer2(),
          ],
          ),
        ),
      );
  }
}

class MainContainer extends StatelessWidget{
  const MainContainer({Key key}) : super(key: key);
  @override 
  Widget build(BuildContext context){
    return Container(
      height: 65.0,
      width: 320.0,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(top: 20.0, bottom:5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 1.0,
          color: Colors.white,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        
        children: [
        
        Expanded(
          flex: 1,
            child: OutlinedButton.icon(
              onPressed: null,
              style: OutlinedButton.styleFrom(
                side: const BorderSide(width: 2.0, color: Colors.white),
              ),
              label: const Text('No. de control: 18670048',
               style: TextStyle(color: Colors.black, fontSize: 14),
               ),
              icon: (     
                 const Icon(Icons.padding, color: Colors.blue, )
              ),
            ),
          ),
        
        ],
      ),
    );
  }
}

class MainContainer2 extends StatelessWidget{
  const MainContainer2({Key key}) : super(key: key);
  @override 
  Widget build(BuildContext context){
    return Container(
      height: 65.0,
      width: 320.0,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(top: 20.0, bottom:5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 1.0,
          color: Colors.white,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        
        children: [
        
        Expanded(
          flex: 1,
            child: OutlinedButton.icon(
              onPressed: null,
              style: OutlinedButton.styleFrom(
                side: const BorderSide(width: 2.0, color: Colors.white),
              ),
              label: const Text('18670048@iguala.tecnm.mx',
               style: TextStyle(color: Colors.black, fontSize: 14),
               ),
              icon: (     
                 const Icon(Icons.mail_outline, color: Colors.blue, )
              ),
            ),
          ),
        
        ],
      ),
    );
  }
}