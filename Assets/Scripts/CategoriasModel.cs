using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using UnityEngine;
using Dapper;

public class CategoriasModel : MonoBehaviour
{
private int _idCategoria;
private string _Nombre;
private string _Foto;

public cateogoria(int pIdCategoria, string pNombre, string pFoto)
{
    _idCategoria = pIdCategoria;
    _Nombre = pNombre;
    _Foto = pFoto;
}

public Categoria()
{
    _idCategoria = 0;
    _Nombre = "";
    _Foto = "";
}

public int IdCategoria
{
    get {return _idCategoria;}
    set{_idCategoria=value}
}
public string Nombre
{
    get{return _Nombre;}
    set{_Nombre=value;}
}
public string Foto
{
    get{return _Foto}
    set{_Foto=value}
}
}
