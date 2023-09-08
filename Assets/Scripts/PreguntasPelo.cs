using System;
using System.Data;
using System.Collections.Generic;
using System.Data.SqlClient;
using UnityEngine;
using UnityEngine.UI;

public class PreguntasPelo : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        try
        {
            connection.Open();

            // Ejecutar una consulta
            string query = "SELECT PreguntaPelo FROM CategoriasPregunta";
            SqlCommand command = new SqlCommand(query, connection);
            
            
        }
        catch
        {

        }
            
        
    }    

    // Update is called once per frame
    void Update()
    {
        
    }
}
