<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="LoaiSP.aspx.vb" Inherits="Assignment.LoaiSP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    #title{
        text-align:center;
        font-size:30px;
    }
    #titletable{
        text-align:center;
        font-size:20px;
    }
    body {
        height:100%;
       
    }
  #distance{
      height:20px;
  }
   
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Menu ID="Menu1" runat="server">
            <Items>
                <asp:MenuItem Text="Chọn bảng" Value="Chọn bảng">
                    <asp:MenuItem NavigateUrl="~/KhachHang.aspx" Text="Bảng khác hàng" Value="Bảng khác hàng"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/HoaDon.aspx" Text="Bảng hóa đơn" Value="Bảng hóa đơn"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/HoaDonCT.aspx" Text="Bảng hóa đơn chi tiết" Value="Bảng hóa đơn chi tiết"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/SanPham.aspx" Text="Bảng sản phẩm" Value="Bảng sản phẩm"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
        </asp:Menu>
        </div>
        <div id="title">Ứng dụng quản lý bán hàng</div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Ma_LSP" DataSourceID="SqlDataSource1" Width="100%">
            <Columns>
                <asp:BoundField DataField="Ma_LSP" HeaderText="Ma_LSP" ReadOnly="True" SortExpression="Ma_LSP" />
                <asp:BoundField DataField="Ten_LSP" HeaderText="Ten_LSP" SortExpression="Ten_LSP" />
                <asp:BoundField DataField="Mo_Ta" HeaderText="Mo_Ta" SortExpression="Mo_Ta" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
    
    </div>
        <div id="distance"></div>
        <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Ma_LSP" DataSourceID="SqlDataSource1" GridLines="Both" Height="27px" HorizontalAlign="Center">
            <EditItemTemplate>
                Ma_LSP:
                <asp:Label ID="Ma_LSPLabel1" runat="server" Text='<%# Eval("Ma_LSP") %>' />
                <br />
                Ten_LSP:
                <asp:TextBox ID="Ten_LSPTextBox" runat="server" Text='<%# Bind("Ten_LSP") %>' />
                <br />
                Mo_Ta:
                <asp:TextBox ID="Mo_TaTextBox" runat="server" Text='<%# Bind("Mo_Ta") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <EmptyDataTemplate>
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </EmptyDataTemplate>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                <table>
                    <tr>
                        <td>Mã loại SP</td>
                        <td> <asp:TextBox ID="Ma_LSPTextBox" runat="server" Text='<%# Bind("Ma_LSP") %>' /></td>
                    </tr>
               <tr>
                   <td>Tên loại SP</td>
                   <td><asp:TextBox ID="Ten_LSPTextBox" runat="server" Text='<%# Bind("Ten_LSP") %>' /></td>
               </tr>
                <tr>
                    <td>Mô tả</td>
                    <td> <asp:TextBox ID="Mo_TaTextBox" runat="server" Text='<%# Bind("Mo_Ta") %>' /></td>
                </tr>
               <tr>
                   <td></td>
              <td>  <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" /></td>
           </tr>
                   </table>
                     </InsertItemTemplate>
            <ItemTemplate>
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbQuanLyBanHangConnectionString %>" DeleteCommand="DELETE FROM [tb_LoaiSanPham] WHERE [Ma_LSP] = @Ma_LSP" InsertCommand="INSERT INTO [tb_LoaiSanPham] ([Ma_LSP], [Ten_LSP], [Mo_Ta]) VALUES (@Ma_LSP, @Ten_LSP, @Mo_Ta)" SelectCommand="SELECT * FROM [tb_LoaiSanPham]" UpdateCommand="UPDATE [tb_LoaiSanPham] SET [Ten_LSP] = @Ten_LSP, [Mo_Ta] = @Mo_Ta WHERE [Ma_LSP] = @Ma_LSP">
            <DeleteParameters>
                <asp:Parameter Name="Ma_LSP" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ma_LSP" Type="String" />
                <asp:Parameter Name="Ten_LSP" Type="String" />
                <asp:Parameter Name="Mo_Ta" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ten_LSP" Type="String" />
                <asp:Parameter Name="Mo_Ta" Type="String" />
                <asp:Parameter Name="Ma_LSP" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
