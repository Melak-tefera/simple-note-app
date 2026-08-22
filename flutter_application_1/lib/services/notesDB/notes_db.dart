import 'package:supabase_flutter/supabase_flutter.dart';

class NotesService {
  final supabase = Supabase.instance.client;

  // Create a new note
  Future<String> createNote({
    required Map<String, dynamic> contentJson,
    String? title,
  }) async {
    final response = await supabase
        .from('notes')
        .insert({
          'title': title,
          'content': contentJson,
        })
        .select('id')
        .single();

    return response['id'] as String;
  }

  // Load a note by id
  Future<Map<String, dynamic>?> getNoteContent(String noteId) async {
    final response = await supabase
        .from('notes')
        .select('content')
        .eq('id', noteId)
        .single();

    return response['content'] as Map<String, dynamic>?;
  }

  // Update an existing note
  Future<void> updateNote({
    required String noteId,
    required Map<String, dynamic> contentJson,
    String? title,
  }) async {
    await supabase.from('notes').update({
      'title': title,
      'content': contentJson,
      'updated_at': DateTime.now().toIso8601String(),
    }).eq('id', noteId);
  }

  // List all notes (id + title + created_at)
  Future<List<Map<String, dynamic>>> listNotes() async {
    final response = await supabase
        .from('notes')
        .select('id,title,created_at')
        .order('updated_at', ascending: false);

    return response as List<Map<String, dynamic>>;
  }
}