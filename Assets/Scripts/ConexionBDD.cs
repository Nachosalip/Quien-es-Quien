using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.data.sqlClient;  
using system.data;
using system.net;

namespace ConexionBDD
{
   public static class BD
   {
      private static List<Usuario> _ListadoUsuarios = new List<Usuario>();
      private static List<Pregunta> _ListadoPreguntas = new List<Pregunta>();
      private static List<Personajes> _ListadoPreguntas = new List<Personajes>();
      private static List<CategoriasPreguntas> _ListadoCategoriasPreguntas = new List<ListadoCategoriasPreguntas>();
      private static List<Caracteristicas> _ListadoCaracteristicas = new List<Caracteristicas>();

      private static string _connectionString = @"Server= A-PHZ2-CIDI-007
      Database=Database;Trusted_Connection=true;"//modificar para que quede bien
   }

   public static List<CategoriasPreguntas> obtenerCategoria(){
      using(SqlConnection db = new SqlConnection(_connectionString))
      {
         string sql = "SELECT * FROM CategoriasPregunta";
         -ListadoCategoriasPreguntas = db.Query<CateogoriasPreguntas>(sql).AsList();
      }
      return _ListadoCategoriasPreguntas;
   }






}