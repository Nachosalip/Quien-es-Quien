using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BlasZanetti : MonoBehaviour
{
    public int id {get; set; }
    public string Nombre { get; set; }
    public string Accesorios { get; set; }
    public string Ojos { get; set; }
    public string Pelo { get; set; }
    public string Genero { get; set; }

    public void blasZanetti(string nombre, string accesorios, string ojos, string pelo, string genero)
{
    id = 1;
    Nombre = "Blas Zanetti";
    Accesorios = "No tiene";
    ojos = "Celeste";
    pelo = "Rubio";
    genero = "Masculino";
}
}

