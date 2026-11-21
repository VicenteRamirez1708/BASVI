import 'package:flutter/material.dart';

class PantallaCarta extends StatefulWidget {
  const PantallaCarta({super.key});

  @override
  State<PantallaCarta> createState() => _PantallaCartaState();
}

class _PantallaCartaState extends State<PantallaCarta> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            "Catálogo",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  child: Padding(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Text("VINOS"),
                  ),
                ),
                Tab(
                    child: Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: Text("LICORES"),
                    ),
                ),
                Tab(
                    child: Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: Text("WHISKY"),
                    ),
                ),
                Tab(
                    child: Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: Text("RON"),
                    ),
                ),
              ],
          ),
        ),
        drawer: MenuLateral(),
        body: TabBarView(
            children: <Widget>[
              Container( child: Text("VINOS"),),
              Container( child: Text("LICORES"),),
              Container( child: Text("WHISKY"),),
              Container( child: Text("RON"),),
            ]
        ),
      ),
    );
  }
}

class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigoAccent,
            ),
            child: Center(
              child: Text(
                "BASVI",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          InkWell(
            child: new ListTile(
              title: Text("INICIO", style: TextStyle(color: Colors.black),),
              leading: Icon(Icons.home, color: Colors.indigoAccent,),
            ),
            onTap: (){
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext) => PantallaCarta(),
                  )
              );
            },
          ),
          InkWell(
            child: new ListTile(
              title: Text("CATEGORIAS", style: TextStyle(color: Colors.black),),
              leading: Icon(Icons.widgets , color: Colors.indigoAccent,),
            ),
            onTap: (){

            },
          ),
          InkWell(
            child: new ListTile(
              title: Text("FAVORITOS", style: TextStyle(color: Colors.black),),
              leading: Icon(Icons.favorite , color: Colors.indigoAccent,),
            ),
            onTap: (){

            },
          ),
          InkWell(
            child: new ListTile(
              title: Text("PEDIDOS", style: TextStyle(color: Colors.black),),
              leading: Icon(Icons.list_alt_outlined , color: Colors.indigoAccent,),
            ),
            onTap: (){

            },
          ),
          InkWell(
            child: new ListTile(
              title: Text("USUARIO", style: TextStyle(color: Colors.black),),
              leading: Icon(Icons.person , color: Colors.indigoAccent,),
            ),
            onTap: (){

            },
          ),
        ],
      ),
    );
  }
}
