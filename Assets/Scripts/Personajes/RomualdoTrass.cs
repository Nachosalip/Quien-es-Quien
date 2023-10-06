using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RomualdoTrass : MonoBehaviour
{
    public int id { get; set; }
    public string Nombre { get; set; }
    public string Accesorios { get; set; }
    public string Ojos { get; set; }
    public string Pelo { get; set; }
    public string Genero { get; set; }

    public void romualdoTrass(string nombre, string accesorios, string ojos, string pelo, string genero)
{
    id = 11;
    Nombre = "Romualdo Trass";
    Accesorios = "Anteojos";
    ojos = "Verde";
    pelo = "Rubio";
    genero = "Masculino";
}

}

