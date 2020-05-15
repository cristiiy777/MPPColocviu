<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Subiectul3Tabela9.aspx.cs"
    Inherits="Examen.Subiectul" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>s3 t9</title>
    <style type="text/css">
        #form1
        {
            height: 358px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/ExamenTabela9.mdb"
        SelectCommand="SELECT * FROM [Localitati]"
        DeleteCommand="DELETE FROM [Localitati] WHERE [IdLocalitate] = ?" 
     >
        <DeleteParameters>
            <asp:Parameter Name="IdProdus" Type="Int32" />
        </DeleteParameters>
    </asp:AccessDataSource>



    <asp:Label ID="Label1" runat="server" 
        Text="Șterge Localități (nota 9 am uitat sa afisez si grid-ul pt elevi)" 
        Font-Size="16pt"></asp:Label>
   
   
    <asp:Button ID="BtnStergere" runat="server" Text="Șterge produs" Style="position: absolute;
        top: 69px; left: 241px; right: 935px;" OnClick="BtnStergere_Click" />
    
    <asp:Panel ID="Panel1" runat="server" Style="position: absolute; top: 97px; left: 562px;
        width: 295px; height: 196px;">
       
        <asp:Label ID="Label2" runat="server" Text="Confirmați ștergerea produsului" Style="position: absolute;
            top: 9px; left: 31px;"></asp:Label>
       
        <asp:TextBox ID="TxtDLoc" runat="server" Style="position: absolute; top: 35px;
            left: 23px; width: 196px;"></asp:TextBox>
       
        <asp:Label ID="Label3" runat="server" Text="Id" Style="position: absolute; top: 65px;
            left: 29px;"></asp:Label>
       
        <asp:TextBox ID="TxtIdLocalitate" runat="server" Style="position: absolute; top: 64px;
            left: 55px; height: 20px; width: 44px;" Enabled="False"></asp:TextBox>
        
        <asp:Button ID="BtnConfirma" runat="server" Text="Confirma" Style="position: absolute;
            top: 98px; left: 30px;" />
        
        <asp:Button ID="BtnRenunta" runat="server" Text="Renunta" Style="position: absolute;
            top: 99px; left: 118px;" OnClick="BtnRenunta_Click" 
            CausesValidation="False" />
        
        <asp:CustomValidator ID="CV" runat="server" ErrorMessage="CustomValidator" Style="position: absolute;
            top: 65px; left: 126px; width: 19px;" Text="&nbsp" OnServerValidate="CV_ServerValidate"></asp:CustomValidator>
        
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Style="position: absolute;
            top: 138px; left: 28px;" ForeColor="#FF3300" />
    </asp:Panel>

    <asp:GridView ID="GridView1" runat="server" 
        style="position:absolute; top: 112px; left: 20px; width: 401px;" 
        AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="IdLocalitate" DataSourceID="AccessDataSource1" 
        ForeColor="#333333" GridLines="None" PageSize="2">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ButtonType="Button" SelectText="Selecteaza" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="IdLocalitate" HeaderText="IdLocalitate" 
                InsertVisible="False" ReadOnly="True" SortExpression="IdLocalitate" />
            <asp:BoundField DataField="DenumireLocalitate" HeaderText="DenumireLocalitate" 
                SortExpression="DenumireLocalitate" />
            <asp:BoundField DataField="NrLocuitori" HeaderText="NrLocuitori" 
                SortExpression="NrLocuitori" />
            <asp:BoundField DataField="Judet" HeaderText="Judet" SortExpression="Judet" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>

    </form>
</body>
</html>
