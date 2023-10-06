using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LauraRochet : MonoBehaviour
{
    public int id { get; set; }
    public string Nombre { get; set; }
    public string Accesorios { get; set; }
    public string Ojos { get; set; }
    public string Pelo { get; set; }
    public string Genero { get; set; }

    public void lauraRochet(string nombre, string accesorios, string ojos, string pelo, string genero)
{
    id = 5;
    Nombre = "Laura Rochet";
    Accesorios = "No tiene";
    ojos = "Marrones";
    pelo = "Rubio";
    genero = "Femenino";
}

}

