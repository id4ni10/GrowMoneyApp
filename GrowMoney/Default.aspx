<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="MySqlBD">
        </asp:GridView>
        <asp:ObjectDataSource ID="MySqlBD" runat="server" TypeName="Lib.Client" SelectMethod="Select">
            <SelectParameters>
                
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource runat="server" TypeName="MyMoney.MyMoneyServiceClient" SelectMethod="getTransaction"
            ID="ObjectDataSource1">
            <SelectParameters>
                <asp:Parameter Name="date" Type="DateTime" DefaultValue="2014-11-20" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
    <div>
        <asp:Button runat="server" Text="Atualizar GrowMoney" OnClick="AtualizarTransacoes_Click" />
    </div>
    </form>
</body>
</html>
