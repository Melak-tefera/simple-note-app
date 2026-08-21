import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/utils/container.dart';
import 'package:flutter_application_1/services/authentication/auth_service.dart';

class Homepage extends StatefulWidget {
Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final service=AuthService();
  final documenttitle=TextEditingController();
  Future<void> logout()async{
    await service.signout();
    Navigator.of(context).popUntil(ModalRoute.withName('/login'),);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Center(
        child: Text('Simple Notes',
                  style: TextStyle(
                    color: Colors.lightGreen,
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                  ),
        
        ),
      ),
      actions: [
        IconButton(onPressed: ()=>logout(), icon: Icon(Icons.logout_rounded))
      ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index){
            return Containerutil(title: "document 1",);
          }
          ),
      ),
        floatingActionButton: FloatingActionButton(
          foregroundColor: Colors.white,
          backgroundColor: Colors.lightGreen,
          onPressed: (){
            showDialog(
              context: context, 
              builder: (context)=>AlertDialog(
                backgroundColor: Colors.lightGreen,
                title: Text(
                  "Create title",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                actions: [
                  TextField(
                controller: documenttitle,
                decoration: InputDecoration(
                  labelText: 'Enter Your title',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: (){}, child: Text("Done")),
                  SizedBox(width: 10,),
                  TextButton(onPressed: ()=>Navigator.pop(context), child: Text("Cancel"))

                ],
              ),
              
                ],

              )
              );
          },
          child: Icon(Icons.add),
          
          ),
    );
  }
}