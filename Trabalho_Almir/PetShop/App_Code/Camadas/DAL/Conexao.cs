using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Conexao
/// </summary>

namespace PetShop.Camadas.DAL
{
    public class Conexao
    {
        public static string getConexao()
        {
            return @"Data Source=.\SQLEXPRESS;Initial Catalog=PETSHOP;Integrated Security=True";
        }
    }
}