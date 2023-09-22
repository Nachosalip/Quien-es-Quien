using System.Collections;
using System.Collections.Generic;
using UnityEngine;

Public class TraerPreguntas : MonoBehaviour
{
    public void CambiarTexto(string nuevoTexto)
    {
        textoUI.text = nuevoTexto;
    }
    
    public LlamarPregunta()
    {
        string datos = PreguntasPelo();
        
    }
}