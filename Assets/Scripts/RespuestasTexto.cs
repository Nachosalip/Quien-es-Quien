using UnityEngine;
using UnityEngine.UI;

public class MostrarTextoEnPantalla : MonoBehaviour
{
    public Text textoEnPantalla; // Arrastra el objeto de texto aquí desde la jerarquía

    public void MostrarTexto()
    {
        // Cambia el texto del objeto de texto cuando se toque el botón
        textoEnPantalla.text = "¡Texto que aparece en pantalla!";
    }
}