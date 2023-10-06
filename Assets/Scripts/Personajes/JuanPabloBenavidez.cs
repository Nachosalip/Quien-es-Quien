using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class JuanPabloBenavidez : MonoBehaviour
{
    public string Nombre { get; set; }
    public string Accesorios { get; set; }
    public string Ojos { get; set; }
    public string Pelo { get; set; }
    public string Genero { get; set; }

    public void juanPabloBenavidez(string nombre, string accesorios, string ojos, string pelo, string genero)
{
    Nombre = "Juan Pablo Benavidez";
    Accesorios = "No tiene";
    ojos = "Negro";
    pelo = "Gris";
    genero = "Masculino";
}

}

