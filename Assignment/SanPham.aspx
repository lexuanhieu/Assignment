<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SanPham.aspx.vb" Inherits="Assignment.SanPham" %>

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
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <div>
        <asp:Menu ID="Menu1" runat="server">
            <Items>
                <asp:MenuItem Text="Chọn bảng" Value="Chọn bảng">
                    <asp:MenuItem NavigateUrl="~/KhachHang.aspx" Text="Bảng khách hàng" Value="Bảng khách hàng"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/HoaDon.aspx" Text="Bảng  hóa đơn" Value="Bảng  hóa đơn"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/HoaDonCT.aspx" Text="Bảng hóa đơn chi tiết" Value="Bảng hóa đơn chi tiết"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/LoaiSP.aspx" Text="Bảng loại sản phẩm" Value="Bảng loại sản phẩm"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
        </asp:Menu>
            </div>
        <div id="title">Ứng dụng quản lý bán hàng</div>
        <br />
        <br />
        <br />
        <br />
        <div id="titletable">Bảng sản phẩm</div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Ma_SP" DataSourceID="SqlDataSource1" Width="100%">
            <Columns>
                <asp:BoundField DataField="Ma_SP" HeaderText="Ma_SP" ReadOnly="True" SortExpression="Ma_SP" />
                <asp:BoundField DataField="Ma_LSP" HeaderText="Ma_LSP" SortExpression="Ma_LSP" />
                <asp:BoundField DataField="Ten_SP" HeaderText="Ten_SP" SortExpression="Ten_SP" />
                <asp:BoundField DataField="SoLuongSP" HeaderText="SoLuongSP" SortExpression="SoLuongSP" />
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
        <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Ma_SP" DataSourceID="SqlDataSource1" GridLines="Both" HorizontalAlign="Center">
            <EditItemTemplate>
                Ma_SP:
                <asp:Label ID="Ma_SPLabel1" runat="server" Text='<%# Eval("Ma_SP") %>' />
                <br />
                Ma_LSP:
                <asp:TextBox ID="Ma_LSPTextBox" runat="server" Text='<%# Bind("Ma_LSP") %>' />
                <br />
                Ten_SP:
                <asp:TextBox ID="Ten_SPTextBox" runat="server" Text='<%# Bind("Ten_SP") %>' />
                <br />
                SoLuongSP:
                <asp:TextBox ID="SoLuongSPTextBox" runat="server" Text='<%# Bind("SoLuongSP") %>' />
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
                        <td>Mã sản phẩm</td>
                        <td><asp:TextBox ID="Ma_SPTextBox" runat="server" Text='<%# Bind("Ma_SP") %>' /></td>
                    </tr>
                    <tr>
                        <td>Mã loại SP</td>
                        <td><asp:TextBox ID="Ma_LSPTextBox" runat="server" Text='<%# Bind("Ma_LSP") %>' /></td>
                    </tr>
                <tr>
                    <td>Tên sản phẩm</td>
                    <td> <asp:TextBox ID="Ten_SPTextBox" runat="server" Text='<%# Bind("Ten_SP") %>' /></td>
                </tr>
                <tr>
                    <td>Số lượng</td>
                    <td><asp:TextBox ID="SoLuongSPTextBox" runat="server" Text='<%# Bind("SoLuongSP") %>' /></td>
                </tr>
              <tr>
                  <td></td>
               <td> <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" /></td>
           </tr> 
                  </table>
                    
                    </InsertItemTemplate>
            <ItemTemplate>
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbQuanLyBanHangConnectionString %>" DeleteCommand="DELETE FROM [tb_SanPham] WHERE [Ma_SP] = @Ma_SP" InsertCommand="INSERT INTO [tb_SanPham] ([Ma_SP], [Ma_LSP], [Ten_SP], [SoLuongSP]) VALUES (@Ma_SP, @Ma_LSP, @Ten_SP, @SoLuongSP)" SelectCommand="SELECT * FROM [tb_SanPham]" UpdateCommand="UPDATE [tb_SanPham] SET [Ma_LSP] = @Ma_LSP, [Ten_SP] = @Ten_SP, [SoLuongSP] = @SoLuongSP WHERE [Ma_SP] = @Ma_SP">
            <DeleteParameters>
                <asp:Parameter Name="Ma_SP" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ma_SP" Type="String" />
                <asp:Parameter Name="Ma_LSP" Type="String" />
                <asp:Parameter Name="Ten_SP" Type="String" />
                <asp:Parameter Name="SoLuongSP" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ma_LSP" Type="String" />
                <asp:Parameter Name="Ten_SP" Type="String" />
                <asp:Parameter Name="SoLuongSP" Type="Int32" />
                <asp:Parameter Name="Ma_SP" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
