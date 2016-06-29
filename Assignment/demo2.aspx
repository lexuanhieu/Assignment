<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="demo2.aspx.vb" Inherits="Assignment.demo2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="hd" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="hd" HeaderText="hd" ReadOnly="True" SortExpression="hd" />
                <asp:BoundField DataField="makh" HeaderText="makh" SortExpression="makh" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
    
    </div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="hd" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                hd:
                <asp:Label ID="hdLabel1" runat="server" Text='<%# Eval("hd") %>' />
                <br />
                makh:
                <asp:TextBox ID="makhTextBox" runat="server" Text='<%# Bind("makh") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EmptyDataTemplate>
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </EmptyDataTemplate>
            <InsertItemTemplate>
                hd:
                <asp:TextBox ID="hdTextBox" runat="server" Text='<%# Bind("hd") %>' />
                <br />
                makh:
                <asp:TextBox ID="makhTextBox" runat="server" Text='<%# Bind("makh") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:Menu ID="Menu1" runat="server">
            <Items>
                <asp:MenuItem Text="New Item" Value="New Item">
                    <asp:MenuItem NavigateUrl="~/demo.aspx" Text="New Item" Value="New Item"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
        </asp:Menu>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DemoConnectionString %>" DeleteCommand="DELETE FROM [hd] WHERE [hd] = @hd" InsertCommand="INSERT INTO [hd] ([hd], [makh]) VALUES (@hd, @makh)" SelectCommand="SELECT * FROM [hd]" UpdateCommand="UPDATE [hd] SET [makh] = @makh WHERE [hd] = @hd">
            <DeleteParameters>
                <asp:Parameter Name="hd" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="hd" Type="String" />
                <asp:Parameter Name="makh" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="makh" Type="String" />
                <asp:Parameter Name="hd" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
