using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void AtualizarTransacoes_Click(object sender, EventArgs e)
    {
        MyMoney.MyMoneyServiceClient client = new MyMoney.MyMoneyServiceClient();
        List<MyMoney.transacao> transacoes = client.getTransaction(DateTime.Now).ToList();

        

    }
}