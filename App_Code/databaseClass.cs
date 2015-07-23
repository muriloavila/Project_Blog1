using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for databaseClass
/// </summary>
public class databaseClass
{
    //Base de dados
    DataClassesDataContext dbBlog = new DataClassesDataContext();

    //Metodo de inserção de um novo Post
    public void InserirPost(modeloPost post)
    {
        tabPost newPost = new tabPost();
        newPost.titulo = post.Titulo;
        newPost.autor = post.Autor;
        newPost.conteudo = post.Conteudo;
        newPost.data = post.Data;
        newPost.status = post.Status;

        dbBlog.tabPosts.InsertOnSubmit(newPost);
        dbBlog.SubmitChanges();
    }

    //Metodo para Seleção de Todos os Posts retornando uma lista de Posts
    public List<modeloPost> SelecionarPosts()
    {
        List<modeloPost> posts = new List<modeloPost>();
        
        //Query em LINQ
        var queryPosts = from post in dbBlog.tabPosts select post;
        foreach (var post in queryPosts)
        {
            modeloPost postagem = new modeloPost();
            postagem.Id = post.Id;
            postagem.Titulo = post.titulo;
            postagem.Autor = post.autor;
            postagem.Conteudo = post.conteudo;
            postagem.Data = post.data;
            postagem.Visitas = Convert.ToInt32(post.visitas);
            postagem.Status = post.status;
            posts.Add(postagem);
        }
        return posts;
    }

    //Metodo para Seleção de Post por Id
    public modeloPost SelecionarPostPorId(int id)
    {
        modeloPost post = new modeloPost();
        var queryPost = from posts in dbBlog.tabPosts where posts.Id == id select posts;
        foreach (var postagem in queryPost)
        {
            post.Id = postagem.Id;
            post.Titulo = postagem.titulo;
            post.Autor = postagem.autor;
            post.Conteudo = postagem.conteudo;
            post.Data = postagem.data;
            post.Status = postagem.status;
            post.Visitas = Convert.ToInt32(postagem.visitas);
        }
        return post;
    }

    //Metodo para Edição de Posts recebendo o modeloPost editado e seu id
    public void EditarPostPorId(int id, modeloPost postagem)
    {
        var queryPost = from post in dbBlog.tabPosts where post.Id == id select post;
        foreach (var posts in queryPost)
        {
            posts.titulo = postagem.Titulo;
            posts.autor = postagem.Autor;
            posts.conteudo = postagem.Conteudo;
            posts.status = postagem.Status;

            dbBlog.SubmitChanges();
        }
    }

    //Metodo para atualizar as Visitas de uma Postagem
    public void AtualizarVisitas(int id)
    {
        var queryPost = from post in dbBlog.tabPosts where post.Id == id select post;
        foreach (var post in queryPost)
        {
            post.visitas += 1;
            dbBlog.SubmitChanges();
        }
    }

    //Metodo para atualizar Status
    public void AtualizarStatus(int id)
    {
        var queryPost = from post in dbBlog.tabPosts where post.Id == id select post;
        foreach (var posts in queryPost)
        {
            if (posts.status == 1)
            {
                posts.status = 0;
                dbBlog.SubmitChanges();
            }
            else if (posts.status == 0)
            {
                posts.status = 1;
                dbBlog.SubmitChanges();
            }
        }
    }

    //Metodo para Deletar o Post
    public void DeletePost(int id)
    {
        var queryPost = from post in dbBlog.tabPosts where post.Id == id select post;
        foreach (var posts in queryPost)
        {
            if (posts.Id == id)
            {
                dbBlog.tabPosts.DeleteOnSubmit(posts);
                dbBlog.SubmitChanges();
            }
        }
    }

}