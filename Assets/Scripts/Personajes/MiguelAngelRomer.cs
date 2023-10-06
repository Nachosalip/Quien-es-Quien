using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MiguelAngelRomero : MonoBehaviour
{
    public int id { get; set; }
    public string Nombre { get; set; }
    public string Accesorios { get; set; }
    public string Ojos { get; set; }
    public string Pelo { get; set; }
    public string Genero { get; set; }

    public void miguelAngelRomero(string nombre, string accesorios, string ojos, string pelo, string genero)
{
    id = 6;
    Nombre = "Miguel Angel Romero";
    Accesorios = "No tiene";
    ojos = "Verde";
    pelo = "Negro";
    genero = "Masculino";
}

}

