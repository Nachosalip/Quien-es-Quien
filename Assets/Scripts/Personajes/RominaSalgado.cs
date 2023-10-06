using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RominaSalgado : MonoBehaviour
{
    public int id { get; set; }
    public string Nombre { get; set; }
    public string Accesorios { get; set; }
    public string Ojos { get; set; }
    public string Pelo { get; set; }
    public string Genero { get; set; }

    public void rominaSalgado(string nombre, string accesorios, string ojos, string pelo, string genero)
{
    id = 10;
    Nombre = "Romina Salgado";
    Accesorios = "Anteojos";
    ojos = "Celeste";
    pelo = "Negro";
    genero = "Femenino";
}

}

