using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RobertoBanzas : MonoBehaviour
{
    public int id {get; set; }
    public string Nombre { get; set; }
    public string Accesorios { get; set; }
    public string Ojos { get; set; }
    public string Pelo { get; set; }
    public string Genero { get; set; }

    public void robertoBanzas(string nombre, string accesorios, string ojos, string pelo, string genero)
{
    id = 8;
    Nombre = "Roberto Banzas";
    Accesorios = "Anteojos";
    ojos = "Celeste";
    pelo = "Marron";
    genero = "Masculino";
}

}

