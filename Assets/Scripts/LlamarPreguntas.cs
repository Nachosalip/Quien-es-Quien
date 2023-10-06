using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class traerPreguntas : MonoBehaviour
{
  public Text textoAparecer;

    public void MostrarTexto()
    {
        textoAparecer.text = "¡Hola, mundo!";
    }
}