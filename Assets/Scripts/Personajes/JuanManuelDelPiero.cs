using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class JuanManuelDelPiero : MonoBehaviour
{
    public string Nombre { get; set; }
    public string Accesorios { get; set; }
    public string Ojos { get; set; }
    public string Pelo { get; set; }
    public string Genero { get; set; }

    public void juanManuelDelPiero(string nombre, string accesorios, string ojos, string pelo, string genero)
{
    Nombre = "Juan Manuel Del Piero";
    Accesorios = "No tiene";
    ojos = "Marron";
    pelo = "Pelado";
    genero = "Masculino";
}

}

