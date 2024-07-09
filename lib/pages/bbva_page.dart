import 'package:flutter/material.dart';

void main() {
  runApp(BBVAPage());
}

class BBVAPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://media.istockphoto.com/id/1358321288/es/v%C3%ADdeo/animaci%C3%B3n-de-fondo-limpia-suave-y-brillante-c%C3%ADrculo-borroso-abstracto-hermoso-dise%C3%B1o-de.jpg?s=640x640&k=20&c=izmSbFwxrf-d4D_J6RTdnDr6EIBKKdKmMQX9wP1LhLE='),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                height: 200, // Altura del encabezado ajustable según tus necesidades
                child: UserAccountsDrawerHeader(
                  accountName: Text("Jean", style: TextStyle(color: Colors.white)),
                  accountEmail: Text("Perfil", style: TextStyle(color: Colors.white)),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://media.istockphoto.com/id/1358321288/es/v%C3%ADdeo/animaci%C3%B3n-de-fondo-limpia-suave-y-brillante-c%C3%ADrculo-borroso-abstracto-hermoso-dise%C3%B1o-de.jpg?s=640x640&k=20&c=izmSbFwxrf-d4D_J6RTdnDr6EIBKKdKmMQX9wP1LhLE='),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home, color: Colors.white),
                title: Text("Inicio", style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.person, color: Colors.white),
                title: Text("Perfil", style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.white),
                title: Text("Configuración", style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.security, color: Colors.white),
                title: Text("Seguridad y Privacidad", style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.vpn_key, color: Colors.white),
                title: Text("Token Digital", style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.qr_code, color: Colors.white),
                title: Text("Operar con QR / Plin", style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.location_on, color: Colors.white),
                title: Text("Puntos de Atención", style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.phone, color: Colors.white),
                title: Text("Comunícate con nosotros", style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.apps, color: Colors.white),
                title: Text("Aplicaciones", style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.info, color: Colors.white),
                title: Text("Acerca de BBVA", style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              // Agrega más opciones según sea necesario
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Image.network(
            'https://media.istockphoto.com/id/1358321288/es/v%C3%ADdeo/animaci%C3%B3n-de-fondo-limpia-suave-y-brillante-c%C3%ADrculo-borroso-abstracto-hermoso-dise%C3%B1o-de.jpg?s=640x640&k=20&c=izmSbFwxrf-d4D_J6RTdnDr6EIBKKdKmMQX9wP1LhLE=',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        "                                 BBVA",
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.menu, color: Colors.white,),
                      onPressed: () {
                        _scaffoldKey.currentState?.openEndDrawer();
                      },
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage("https://png.pngtree.com/thumb_back/fh260/background/20230611/pngtree-wolf-animals-images-wallpaper-for-pc-384x480-image_2916211.jpg"),
                    ),
                  ),
                  Text(
                    "Hola Jean",
                    style: TextStyle(fontSize: 20, color:  Colors.white),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Acción al cambiar usuario
                    },
                    child: Text(
                      "Cambiar Usuario",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Acción al iniciar sesión
                    },
                    child: Text("Iniciar Sesión"),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.vpn_key, color: Colors.white, size: 50),
                        SizedBox(height: 8),
                        Text("Token Digital", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.location_on, color: Colors.white, size: 50),
                        SizedBox(height: 8),
                        Text("Puntos de Atención", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.money, color: Colors.white, size: 50),
                        SizedBox(height: 8),
                        Text("Plin", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.business, color: Colors.white, size: 50),
                        SizedBox(height: 8),
                        Text("Acceder a Mi Negocio", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
