using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Clientes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        PetShop.Camadas.BLL.Cidades bllCidades = new PetShop.Camadas.BLL.Cidades();
        
    }


    protected void btnSelecionar_Click(object sender, EventArgs e)
    {

    }

    

    protected void btnAtualizar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Clientes.aspx");
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        string valor;
        valor = DataList1.DataKeys[e.Item.ItemIndex].ToString();
        Response.Redirect("Teste.aspx?id=" + valor);
    }
}