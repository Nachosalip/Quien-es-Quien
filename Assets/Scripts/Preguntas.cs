using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Preguntas : MonoBehaviour
{
    public string Pregunta1 { get; set; }
    public string Pregunta2 { get; set; }
    public string Pregunta3 { get; set; }
    public string Pregunta4 { get; set; }


public void PreguntasPelo(string Pregunta1, string Pregunta2, string Pregunta3)
{
    Pregunta1 = "¿Tu personaje tiene el pelo rubio?";
    Pregunta2 = "¿Tu personaje es pelado?";
    Pregunta3 = "¿Tu personaje tiene el pelo gris?";
}

public void PreguntasOjos(string Pregunta1, string Pregunta2, string Pregunta3)
{
    Pregunta1 = "¿Sus ojos son de color marrón?";
    Pregunta2 = "¿Sus ojos son de color celeste?";
    Pregunta3 = "¿Sus ojos son de color negro?";
    Pregunta4 = "¿Sus ojos son de color verde?";
}

public void PreguntasGenero(string Pregunta1, string Pregunta2)
{
    Pregunta1 = "¿Tu personaje es mujer?";
    Pregunta2 = "¿Tu personaje es hombre?";
}

public void PreguntasAccesorios(string Pregunta1)
{
    Pregunta1 = "¿Tu personaje tiene anteojos?";
}
}



    
