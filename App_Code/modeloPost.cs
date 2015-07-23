using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for modeloPost
/// </summary>
public class modeloPost
{
    private int id;
    private string titulo;
    private string autor;
    private string conteudo;
    private DateTime data;
    private int status;
    private int visitas;
    private databaseClass dataClasse = new databaseClass();
    public modeloPost()
    {

    }
	public modeloPost(string Titulo, string Autor, string Conteudo, int Status)
	{
        titulo = Titulo;
        autor = Autor;
        conteudo = Conteudo;
        status = Status;
        data = DateTime.Today;
	}

    public int Id
    {
        get { return id; }
        set { id = value; }
    }
    public string Titulo
    {
        get { return titulo; }
        set { titulo = value; }
    }

    public string Autor
    {
        get { return autor; }
        set { autor = value; }
    }

    public string Conteudo
    {
        get { return conteudo; }
        set { conteudo = value; }
    }

    public int Status
    {
        get { return status; }
        set {
                if (value == 0 || value == 1)
                {
                    status = value;
                }
            }
    }

    public DateTime Data
    {
        get { return data; }
        set { data = value; }
    }

    public int Visitas
    {
        get { return visitas; }
        set { visitas = value; }
    }

    public void InserirPost(modeloPost post)
    {
        dataClasse.InserirPost(post);
    }
    public List<modeloPost> SelecionarPosts()
    {
        return dataClasse.SelecionarPosts();
    }
    public modeloPost SelecionarPostPorId(int id)
    {
        return dataClasse.SelecionarPostPorId(id);
    }
    public void EditarPostPorId(int id, modeloPost post)
    {
        dataClasse.EditarPostPorId(id, post);
    }
    public void AtualizarVisitas(int id)
    {
        dataClasse.AtualizarVisitas(id);
    }
    public void AtualizarStatus(int id)
    {
        dataClasse.AtualizarStatus(id);
    }
    public void DeletePost(int id)
    {
        dataClasse.DeletePost(id);
    }
}