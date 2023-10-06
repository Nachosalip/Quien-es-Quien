using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NataliaFernandez : MonoBehaviour
{
    public int id { get; set; }
    public string Nombre { get; set; }
    public string Accesorios { get; set; }
    public string Ojos { get; set; }
    public string Pelo { get; set; }
    public string Genero { get; set; }

    public void nataliaFernandez(string nombre, string accesorios, string ojos, string pelo, string genero)
{
    id = 7;
    Nombre = "Natalia Fernandez";
    Accesorios = "Anteojos";
    ojos = "Celeste";
    pelo = "Marron";
    genero = "Femenino";
}

}

