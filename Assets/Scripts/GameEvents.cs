using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class GameEvents : MonoBehaviour
{
    
        public static GameEvents current;
        private void Awake()
        {
            if (current != null && current != this)
            {
                Destroy(this.gameObject);
            }
            else
            {
                current = this;
            }
        }

        public UnityEvent QuitarTarjeta = new UnityEvent();
    

   
}
