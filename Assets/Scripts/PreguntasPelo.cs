using System;
using System.Data;
using System.Data.SqlClient;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Events;

public class DesaperecerAlClic : MonoBehaviour
{
   private void OnMouseDown()
    {
        gameObject.SetActive(false);
    }
    
}

