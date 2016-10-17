using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Carrinho : System.Web.UI.Page
{
    public static int preco;

    protected void Page_Load(object sender, EventArgs e)
    {
           
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow grvRow = GridView1.SelectedRow;
        lblAnimal.Text = grvRow.Cells[1].Text + " - " + grvRow.Cells[2].Text;
    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow grvRow = GridView2.SelectedRow;
        lblCliente.Text = grvRow.Cells[1].Text;
    }


    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow grvRow = GridView3.SelectedRow;
        lblTratamentos.Text += " - " + grvRow.Cells[1].Text;
        preco += Convert.ToInt32(grvRow.Cells[2].Text);
        txtPreco.Text = preco.ToString();
    }

    protected void btnConfirmar_Click(object sender, EventArgs e)
    {
        if (!(lblAnimal.Text == "" || lblCliente.Text == "" || lblErro.Text == ""))
        {
            string valor;
            valor = lblAnimal.Text + lblCliente.Text + lblTratamentos.Text;
            preco = 0;
            Response.Redirect("Registros.aspx?id=" + valor);
        }
        else
        {
            lblErro.Text = "*Pedido não pôde ser realizado. Tem alguma informação faltando";
        }
        
    }
}