import 'package:flutter/material.dart';
 
void main() => runApp(MaterialApp(home:MyHomePage() ,)); 
	
 
class MyHomePage extends StatefulWidget {
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
 List <Widget> _widgets = <Widget> [
   Text("Profile",style:TextStyle(fontSize: 20)),
      Text("Settings",style:TextStyle(fontSize: 20)),

   Text("business",style:TextStyle(fontSize: 20)),

 ];

 void _onItemTapped(int index){
   setState(() {
     _selectedIndex = index;
   });
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        
    backgroundColor: Colors.black,
    elevation: 20,
    
        title: Text("NavigationBar",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
      
        centerTitle: true,
  
        //SizedBox(width: 10.0,), 

      ),
  body: Center(
child: _widgets.elementAt(_selectedIndex),
  ),
  
  floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.navigation),
        backgroundColor: Colors.teal,
      ),
  bottomNavigationBar: 
  BottomNavigationBar(items:<BottomNavigationBarItem>[
BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'business',
          ),
         
        
        
  ],
  currentIndex: _selectedIndex,
  onTap: _onItemTapped,
  ),
  
  
  
  



    );
 }

}
