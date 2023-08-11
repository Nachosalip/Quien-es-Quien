using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class controlDialogos : MonoBehaviour
{
   private animator anim;
   private Queue <string> filaDialogos;
   Textos texto;
}

public void ActivarCartel(Textos textoObjeto)
{
   anim.setBool("Cartel", true)
   texto = textoObjeto;

}

public void ActivaTexto()
{
   filaDialogos.clear();
   foreach (string textoGuardar in texto.arrayTextos)
   {
      filaDialogos.Enqueue(textoGuardar)
   }
   siguienteFrase();
}

public void siguienteFrase()
{
   CierraCartel();
   return;
}

void CierraCartel()
{
   anim.setBool("Cartel", false);
}
