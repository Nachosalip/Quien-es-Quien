using UnityEngine;
using UnityEngine.SceneManagement;

public class ReiniciarEscena : MonoBehaviour
{
    public string nombreDeEscena; // Nombre de la escena que deseas reiniciar

    public void Reiniciar()
    {
        SceneManager.LoadScene(nombreDeEscena); // Carga la escena nuevamente
    }
}