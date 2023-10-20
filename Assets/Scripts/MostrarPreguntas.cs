using UnityEngine;

public class mostrarPregunta : MonoBehaviour
{
    public GameObject objetoReemplazo; 

    private void OnMouseDown()
    {
        // Cuando el jugador toque el objeto original
        if (objetoReemplazo != null)
        {
            // Desactiva el objeto original
            gameObject.SetActive(false);

            // Activa el objeto de reemplazo en la misma posición
            objetoReemplazo.SetActive(true);
            
        }
    }
}