using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Personaje2D : MonoBehaviour
{
    public string Nombre { get; set; }
    public string Accesorios { get; set; }
    public string Ojos { get; set; }
    public string Pelo { get; set; }
    public string Genero { get; set; }

    Public lauraRochet(string nombre, string accesorios, string ojos, string pelo, string genero)
{
    Nombre = "Laura Rochet";
    Accesorios = "No tiene";
    ojos = "Marrones";
    pelo = "Rubio";
    genero = "Femenino";
}

}

