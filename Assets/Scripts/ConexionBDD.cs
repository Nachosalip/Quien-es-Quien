using System;
using System.Data;
using System.Collections.Generic;
using System.Data.SqlClient;
using UnityEngine;
using UnityEngine.UI;

public class DatabaseManager : MonoBehaviour
{
    private string connectionString = "Server=A-PHZ2-AMI-003;"/*cambiar al server de cada compu*/;

    void Start()
    {
        SqlConnection connection = new SqlConnection(connectionString);

        try
        {
            connection.Open();
            Debug.Log("Conexión exitosa");

            // Ejecutar una consulta
            string query = "SELECT * from Personajes ORDER BY NEWID() Limit 2";
            SqlCommand command = new SqlCommand(query, connection);

            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                string dato = reader.GetString(0); // Ejemplo: obtén la primera columna como una cadena
                Debug.Log(dato);
            }   

            reader.Close();
        }
        catch (Exception e)
        {
            Debug.LogError("Error de conexión: " + e.Message);
        }
        finally
        {
            connection.Close();
        }
    }
}