import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  final supabase= Supabase.instance.client;

  Future<void> signin({required String email,required String password})
  async{
    await supabase.auth.signInWithPassword(email: email,password: password);
  }
  Future<void>signup({required String email, required String password})
  async{
    await supabase.auth.signUp(email: email ,password: password);
  }
  Future<void>signout()
  async{
    await supabase.auth.signOut();
  }
  Session? getsession(){
    return supabase.auth.currentSession;
  }
  User? getuser(){
    return supabase.auth.currentUser;
  }

  
}