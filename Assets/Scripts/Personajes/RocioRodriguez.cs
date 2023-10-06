using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RocioRodriguez : MonoBehaviour
{
    public int id { get; set; }
    public string Nombre { get; set; }
    public string Accesorios { get; set; }
    public string Ojos { get; set; }
    public string Pelo { get; set; }
    public string Genero { get; set; }

    public void rocioRodriguez(string nombre, string accesorios, string ojos, string pelo, string genero)
{
    id = 9;
    Nombre = "Rocio Rodriguez";
    Accesorios = "No tiene";
    ojos = "Marron";
    pelo = "Negro";
    genero = "Femenino";
}

}

