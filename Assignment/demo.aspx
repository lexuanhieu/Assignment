<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="demo.aspx.vb" Inherits="Assignment.demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="makh" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="makh" HeaderText="makh" ReadOnly="True" SortExpression="makh" />
                <asp:BoundField DataField="ten" HeaderText="ten" SortExpression="ten" />
                <asp:BoundField DataField="sdt" HeaderText="sdt" SortExpression="sdt" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
    
    </div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="makh" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                makh:
                <asp:Label ID="makhLabel1" runat="server" Text='<%# Eval("makh") %>' />
                <br />
                ten:
                <asp:TextBox ID="tenTextBox" runat="server" Text='<%# Bind("ten") %>' />
                <br />
                sdt:
                <asp:TextBox ID="sdtTextBox" runat="server" Text='<%# Bind("sdt") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EmptyDataTemplate>
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </EmptyDataTemplate>
            <InsertItemTemplate>
                makh:
                <asp:TextBox ID="makhTextBox" runat="server" Text='<%# Bind("makh") %>' />
                <br />
                ten:
                <asp:TextBox ID="tenTextBox" runat="server" Text='<%# Bind("ten") %>' />
                <br />
                sdt:
                <asp:TextBox ID="sdtTextBox" runat="server" Text='<%# Bind("sdt") %>' />
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
                <asp:MenuItem Text="table" Value="table">
                    <asp:MenuItem NavigateUrl="~/demo2.aspx" Text="hd" Value="hd"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
        </asp:Menu>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DemoConnectionString %>" DeleteCommand="DELETE FROM [kh] WHERE [makh] = @makh" InsertCommand="INSERT INTO [kh] ([makh], [ten], [sdt]) VALUES (@makh, @ten, @sdt)" SelectCommand="SELECT * FROM [kh]" UpdateCommand="UPDATE [kh] SET [ten] = @ten, [sdt] = @sdt WHERE [makh] = @makh">
            <DeleteParameters>
                <asp:Parameter Name="makh" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="makh" Type="String" />
                <asp:Parameter Name="ten" Type="String" />
                <asp:Parameter Name="sdt" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ten" Type="String" />
                <asp:Parameter Name="sdt" Type="String" />
                <asp:Parameter Name="makh" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
